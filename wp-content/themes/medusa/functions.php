<?php
/*	Function.php padrão do tema TB-social
 *  Equipe de desenvolvimento ThinkBeyond: Mateus B. Constantino, Leonardo R. Sousa.
 * 
 *  Para mais informações sobre os ganchos, filtros e açoes 
 *  acessar: tb.digital
 * */
 
 //Remove scripts da frontpage
function remover_javascript() {
    if ( is_front_page() ) {
        //Duplique a linha abaixo e adicione o ID do JS que deseja remover
        wp_dequeue_script( 'prettyPhoto' );;
        wp_dequeue_script( 'swipe' );
        wp_dequeue_script( 'waypoints' );
        wp_dequeue_script( 'wp-embed' ); 
        wp_dequeue_script( 'elementor-dialog' );
        wp_dequeue_script( 'elementor-waypoints' );
    }
}
add_action( 'wp_enqueue_scripts', 'remover_javascript', 100 );

//Remove block-library css 
function remover_css(){
    //Duplique a linha abaixo e adicione o ID do CSS que deseja remover
    wp_dequeue_style( 'wp-block-library' );
} 
add_action( 'wp_enqueue_scripts', 'remover_css' , 100 );
 
 
 
//Permite a entrada de SVG na biblioteca do wordpress
function cc_mime_types($mimes) {
 $mimes['svg'] = 'image/svg+xml';
 return $mimes;
}
add_filter('upload_mimes', 'cc_mime_types');
 
 
//Código para adiar JS - Este código pode causar problema em alguns plugins, remova somente em último caso
function defer_parsing_of_js( $url ) {
    if ( is_user_logged_in() ) return $url; //pf não quebra WP Admin
    if ( FALSE === strpos( $url, '.js' ) ) return $url;
    if ( strpos( $url, 'jquery.min.js' ) ) return $url;
    return str_replace( ' src', ' defer src', $url );
}
add_filter( 'script_loader_tag', 'defer_parsing_of_js', 10 );


/* Removendo o suporte a Emojis do WordPress para navegadores antigos */
function custom_disable_emojis() {
	remove_action( 'wp_head', 'print_emoji_detection_script', 7 );
	remove_action( 'admin_print_scripts', 'print_emoji_detection_script' );
	remove_action( 'wp_print_styles', 'print_emoji_styles' );
	remove_action( 'admin_print_styles', 'print_emoji_styles' );
	remove_filter( 'the_content_feed', 'wp_staticize_emoji' );
	remove_filter( 'comment_text_rss', 'wp_staticize_emoji' );
	remove_filter( 'wp_mail', 'wp_staticize_emoji_for_email' );
	add_filter( 'tiny_mce_plugins', 'custom_disable_emojis_tinymce' );
	}
	add_action( 'init', 'custom_disable_emojis' );
	function custom_disable_emojis_tinymce( $plugins ) {
	if ( is_array( $plugins ) ) {
		return array_diff( $plugins, array( 'wpemoji' ) );
	} else {
		return array();
	}
}
	
// Remover a versão do WordPress do código
remove_action('wp_head', 'wp_generator');

// // Remover link RSD
remove_action ('wp_head', 'rsd_link');

// Remove os shortlinks dos posts
remove_action( 'wp_head', 'wp_shortlink_wp_head');

// Remove a versão do WordPress do cabeçalho
remove_action('wp_head', 'wp_generator');

// Remove wlwmanifest_link - Recurso usado pelo Windows Live Writer. 
remove_action( 'wp_head', 'wlwmanifest_link');

// Força o wordpress a ler shortcodes em textos de widgets
add_filter('widget_text', 'do_shortcode');

// Remover a versão do WordPress do RSS
function remove_wp_version_rss() {return ;}
add_filter('the_generator','remove_wp_version_rss');

// Estilos e scripts tb-theme
function tb_style_scripts () {
	
	// Versão do nosso tema
	$tb_version = date('i');

	// Main Style
	wp_enqueue_style( 'tb-style', get_template_directory_uri() . '/style.css', array(), $tb_version, 'all' );
	
	// FontAwesome
	wp_enqueue_style( 'font_Awesome', get_template_directory_uri() . '/lib/fontawesome-5.14.0-web/css/all.min.css', array(), $tb_version, 'all' );

	// Main Js
	wp_enqueue_script( 'tb-scripts', get_template_directory_uri() . '/js/main.js', array('jquery'), $tb_version, true );
	wp_enqueue_script( 'uikit', 'https://cdn.jsdelivr.net/npm/uikit@3.6.22/dist/js/uikit.min.js', $tb_version, true );
	wp_enqueue_script( 'uikit-icons', 'https://cdn.jsdelivr.net/npm/uikit@3.6.22/dist/js/uikit-icons.min.js', $tb_version, true );
}
// Carrega os estilos e scripts
add_action( 'wp_enqueue_scripts', 'tb_style_scripts' );

// Estilos e Scripts exclusivos para navegadores diferentes
if(strpos($_SERVER['HTTP_USER_AGENT'], 'MSIE') !== FALSE){
	function Navegador_SS() {
		wp_enqueue_script( 'IE-html5', 'https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js', array(), $tb_version, 'all' );
		wp_enqueue_script( 'IE-respond', 'https://oss.maxcdn.com/respond/1.4.2/respond.min.js', array(), $tb_version, 'all' );	
	} 

	add_action( 'wp_enqueue_scripts', 'Navegador_SS' );
	
} elseif (strpos($_SERVER['HTTP_USER_AGENT'], 'Safari') !== FALSE && strpos($_SERVER['HTTP_USER_AGENT'], 'Chrome') == FALSE && strpos($_SERVER['HTTP_USER_AGENT'], 'Opera') == FALSE){
		function Navegador_SS() {
		    wp_enqueue_style( 'Safari', get_template_directory_uri() . '/css/safari-style.css', array(), $tb_version, 'all' );
		}
		
	add_action( 'wp_enqueue_scripts', 'Navegador_SS' );
	
}else {function Navegador_SS() {return'';}}

// Registrar áreas de widgets
function tb_sidebar() {
	register_sidebar(
		array (
			'name' => __( 'tb_sidebar', 'Medusa'),
			'id' => 'side-bar-padrao',
			'description' => __( 'Barra lateral padrão', 'Medusa' ),
			'before_widget' => '<div class="conteudo-widget">',
			'after_widget' => "</div>",
			'before_title' => '<h3 class="titulo-widget">',
			'after_title' => '</h3>',
		)
	);
	register_sidebar(
		array (
			'name' => __( 'tb_sidebar_categoria', 'Medusa'),
			'id' => 'side-bar-categoria',
			'description' => __( 'Barra lateral para categoria', 'Medusa' ),
			'before_widget' => '<div class="conteudo-widget">',
			'after_widget' => "</div>",
			'before_title' => '<h3 class="titulo-widget">',
			'after_title' => '</h3>',
		)
	);
}
add_action( 'widgets_init', 'tb_sidebar' );

$preset_widgets = array (
	'primary_widget_area'  => array( 'search', 'pages', 'categories', 'archives' ),
	'secondary_widget_area'  => array( 'links', 'meta' )
);
if ( isset( $_GET['activated'] ) ) {
	update_option( 'sidebars_widgets', $preset_widgets );
}

// Verificar widgets nas áreas de widgets
function is_sidebar_active( $index ){
	global $wp_registered_sidebars;
	$widgetcolums = wp_get_sidebars_widgets();
	if ($widgetcolums[$index]) return true;
	return false;
}

// Suporte para thumbnail
add_theme_support( 'post-thumbnails' ); 
the_post_thumbnail('large');  
set_post_thumbnail_size( 760, 350 );


// Breadcrumbs para produtos  

function custom_breadcrumbs() {
       
    // Configuracoes
    $separator          = '';
    $breadcrums_id      = 'breadcrumbs';
    $breadcrums_class   = 'breadcrumb';
    $home_title         = 'Início';
      
    // Se você tiver algum tipo de postagem personalizado com taxonomias personalizadas, coloque o nome da taxonomia abaixo (e.g. product_cat)
    $custom_taxonomy    = 'product_cat';
       
    // Obter as informações de consulta e publicação
    global $post,$wp_query;
       
    // Não exibir na página inicial
    if ( !is_front_page() ) {
       
        // Construa o breadcrumbs
        echo '<ul id="' . $breadcrums_id . '" class="' . $breadcrums_class . '">';
           
        // Home page
        echo '<li class="item-home"><a class="bread-link bread-home" href="' . get_home_url() . '" title="' . $home_title . '">' . $home_title . '</a></li>';

           
        if ( is_archive() && !is_tax() && !is_category() && !is_tag() ) {
              
            echo '<li class="item-current item-archive"><span class="bread-current bread-archive">' . post_type_archive_title($prefix, false) . '</span></li>';
              
        } else if ( is_archive() && is_tax() && !is_category() && !is_tag() ) {
              
            // Se post é um tipo de postagem personalizado
            $post_type = get_post_type();
              
            // Se for um nome e link de exibição de tipo de postagem personalizado
            if($post_type != 'post') {
                  
                $post_type_object = get_post_type_object($post_type);
                $post_type_archive = get_post_type_archive_link($post_type);
              
                echo '<li class="item-cat item-custom-post-type-' . $post_type . '"><a class="bread-cat bread-custom-post-type-' . $post_type . '" href="' . $post_type_archive . '" title="' . $post_type_object->labels->name . '">' . $post_type_object->labels->name . '</a></li>';
              
            }
              
            $custom_tax_name = get_queried_object()->name;
            echo '<li class="item-current item-archive"><span class="bread-current bread-archive">' . $custom_tax_name . '</span></li>';
              
        } else if ( is_single() ) {
              
            $post_type = get_post_type();
              
            if($post_type != 'post') {
                  
                $post_type_object = get_post_type_object($post_type);
                $post_type_archive = get_post_type_archive_link($post_type);
              
                echo '<li class="item-cat item-custom-post-type-' . $post_type . '"><a class="bread-cat bread-custom-post-type-' . $post_type . '" href="' . $post_type_archive . '" title="' . $post_type_object->labels->name . '">' . $post_type_object->labels->name . '</a></li>';
              
            }
              
            // Obter informações de categoria
            $category = get_the_category();
             
            if(!empty($category)) {
              
                // A última publicação da categoria está em
                $last_category = end(array_values($category));
                  
                // Obter pai de qualquer categoria
                $get_cat_parents = rtrim(get_category_parents($last_category->term_id, true, ','),',');
                $cat_parents = explode(',',$get_cat_parents);
                  
                // Loop através de categorias pai e armazenar em variável $ cat_display
                $cat_display = '';
                foreach($cat_parents as $parents) {
                    $cat_display .= '<li class="item-cat">'.$parents.'</li>';            
                }
             
            }
              
            // Se for um tipo de publicação personalizado dentro de uma taxonomia personalizada
            $taxonomy_exists = taxonomy_exists($custom_taxonomy);
            if(empty($last_category) && !empty($custom_taxonomy) && $taxonomy_exists) {
                   
                $taxonomy_terms = get_the_terms( $post->ID, $custom_taxonomy );
                $cat_id         = $taxonomy_terms[0]->term_id;
                $cat_nicename   = $taxonomy_terms[0]->slug;
                $cat_link       = get_term_link($taxonomy_terms[0]->term_id, $custom_taxonomy);
                $cat_name       = $taxonomy_terms[0]->name;
               
            }
              
            // Verifique se o post está em uma categoria
            if(!empty($last_category)) {
                echo $cat_display;
                echo '<li class="item-current item-' . $post->ID . '"><span class="bread-current bread-' . $post->ID . '" title="' . get_the_title() . '"><a href="' . get_permalink() . '">' . get_the_title() . '</a></span></li>';
                  
            // Em caso de publicação em uma taxonomia personalizada
            } else if(!empty($cat_id)) {
                  
                echo '<li class="item-cat item-cat-' . $cat_id . ' item-cat-' . $cat_nicename . '"><a class="bread-cat bread-cat-' . $cat_id . ' bread-cat-' . $cat_nicename . '" href="' . $cat_link . '" title="' . $cat_name . '">' . $cat_name . '</a></li>';
                echo '<li class="item-current item-' . $post->ID . '"><span class="bread-current bread-' . $post->ID . '" title="' . get_the_title() . '"><a href="' . get_permalink() . '">' . get_the_title() . '</a></span></li>';
              
            } else {
                  
                echo '<li class="item-current item-' . $post->ID . '"><span class="bread-current bread-' . $post->ID . '" title="' . get_the_title() . '"><a href="' . get_permalink() . '">' . get_the_title() . '</a></span></li>';
                  
            }
              
        } else if ( is_category() ) {
               
            // Página Category
            echo '<li class="item-current item-cat"><span class="bread-current bread-cat"><a href="' . get_permalink() . '">' . single_cat_title('', false) . '</a></span></li>';
               
        } else if ( is_page() ) {
               
            // Página padrão
            if( $post->post_parent ){
                   
        
                $anc = get_post_ancestors( $post->ID );                 

                $anc = array_reverse($anc);                   

                if ( !isset( $parents ) ) $parents = null;
                foreach ( $anc as $ancestor ) {
                    $parents .= '<li class="item-parent item-parent-' . $ancestor . '"><a class="bread-parent bread-parent-' . $ancestor . '" href="' . get_permalink($ancestor) . '" title="' . get_the_title($ancestor) . '">' . get_the_title($ancestor) . '</a></li>';
                    $parents .= '<li class="separator separator-' . $ancestor . '"> ' . $separator . ' </li>';
                }
                   
                echo $parents;
                   
                // Página Atual
                echo '<li class="item-current item-' . $post->ID . '"><span title="' . get_the_title() . '"><a href="' . get_permalink() . '">' . get_the_title() . '</a></span></li>';
                   
            } else {
                   
                // Basta exibir a página atual se não os pais
                echo '<li class="item-current item-' . $post->ID . '"><span class="bread-current bread-' . $post->ID . '"><a href="' . get_permalink() . '">' . get_the_title() . '</a></span></li>';
                   
            }
               
        } else if ( is_tag() ) {
               
            // Página de Tag
               
            // Obter informações de tag
            $term_id        = get_query_var('tag_id');
            $taxonomy       = 'post_tag';
            $args           = 'include=' . $term_id;
            $terms          = get_terms( $taxonomy, $args );
            $get_term_id    = $terms[0]->term_id;
            $get_term_slug  = $terms[0]->slug;
            $get_term_name  = $terms[0]->name;
               
            // Exibir o nome da Tag
            echo '<li class="item-current item-tag-' . $get_term_id . ' item-tag-' . $get_term_slug . '"><span class="bread-current bread-tag-' . $get_term_id . ' bread-tag-' . $get_term_slug . '">' . $get_term_name . '</span></li>';
           
        } elseif ( is_day() ) {
               
            // Day archive
               
            // Year link
            echo '<li class="item-year item-year-' . get_the_time('Y') . '"><a class="bread-year bread-year-' . get_the_time('Y') . '" href="' . get_year_link( get_the_time('Y') ) . '" title="' . get_the_time('Y') . '">' . get_the_time('Y') . ' Archives</a></li>';
            echo '<li class="separator separator-' . get_the_time('Y') . '"> ' . $separator . ' </li>';
               
            // Month link
            echo '<li class="item-month item-month-' . get_the_time('m') . '"><a class="bread-month bread-month-' . get_the_time('m') . '" href="' . get_month_link( get_the_time('Y'), get_the_time('m') ) . '" title="' . get_the_time('M') . '">' . get_the_time('M') . ' Archives</a></li>';
            echo '<li class="separator separator-' . get_the_time('m') . '"> ' . $separator . ' </li>';
               
            // Day display
            echo '<li class="item-current item-' . get_the_time('j') . '"><span class="bread-current bread-' . get_the_time('j') . '"> ' . get_the_time('jS') . ' ' . get_the_time('M') . ' Archives</span></li>';
               
        } else if ( is_month() ) {
               
            // Arquivo               

            echo '<li class="item-year item-year-' . get_the_time('Y') . '"><a class="bread-year bread-year-' . get_the_time('Y') . '" href="' . get_year_link( get_the_time('Y') ) . '" title="' . get_the_time('Y') . '">' . get_the_time('Y') . ' Archives</a></li>';
            echo '<li class="separator separator-' . get_the_time('Y') . '"> ' . $separator . ' </li>';
               

            echo '<li class="item-month item-month-' . get_the_time('m') . '"><span class="bread-month bread-month-' . get_the_time('m') . '" title="' . get_the_time('M') . '">' . get_the_time('M') . ' Archives</span></li>';
               
        } else if ( is_year() ) {
               

            echo '<li class="item-current item-current-' . get_the_time('Y') . '"><span class="bread-current bread-current-' . get_the_time('Y') . '" title="' . get_the_time('Y') . '">' . get_the_time('Y') . ' Archives</span></li>';
               
        } else if ( is_author() ) {
               
            // Autor
               
            // Get the author information
            global $author;
            $userdata = get_userdata( $author );
               

            echo '<li class="item-current item-current-' . $userdata->user_nicename . '"><span class="bread-current bread-current-' . $userdata->user_nicename . '" title="' . $userdata->display_name . '">' . 'Author: ' . $userdata->display_name . '</span></li>';
           
        } else if ( get_query_var('paged') ) {
               

            echo '<li class="item-current item-current-' . get_query_var('paged') . '"><span class="bread-current bread-current-' . get_query_var('paged') . '" title="Page ' . get_query_var('paged') . '">'.__('Page') . ' ' . get_query_var('paged') . '</span></li>';
               
        } else if ( is_search() ) {
           
            // Página Search
            echo '<li class="item-current item-current-' . get_search_query() . '"><span class="bread-current bread-current-' . get_search_query() . '" title="Resultado da pesquisa por: ' . get_search_query() . '">Resultado da pesquisa por: ' . get_search_query() . '</span></li>';
           
        } elseif ( is_404() ) {
               
            // Pagina 404
            echo '<li>' . 'Página não encontrada' . '</li>';
        }
       
        echo '</ul>';
           
    }
       
}





