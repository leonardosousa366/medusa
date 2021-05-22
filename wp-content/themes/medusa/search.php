<?php get_header(); ?>
<style>
	div#pagina-de-pesquisa {
        width: 1240px;
        margin: auto;
        padding: 0 20px;
        margin-bottom: 60px;
    }
    h2.titulo-breadcrumb.sand {
        color: #f39a60;
        border-bottom: solid 2px;
        font-family: 'Ubuntu';
    }
    h2.entry-title.pesquisa a {
        color: #f39a60;
        letter-spacing: 1.4px;
    }
    .entry-summary p, .entry-utility, .entry-meta {
        font-weight: 300;
        letter-spacing: 1.4px;
    }
    div#nav-above a {
        color: #000;
        font-size: 16px;
    }
    h2.titulo-breadcrumb a {
        color: #000;
    }
    h2.entry-title.pesquisa {
        margin-bottom: 10px;
        margin-top: 40px;
    }
    h1.entry-title, h1.entry-title span {
        font-size: 60px;
        margin-bottom: 0;
    }
    h1.entry-title span {
        color: #f39a60;
    }
    form#searchform input:last-child {
        text-align: initial;
    }
</style>
  <div id="container">
  <div id="pagina-de-pesquisa" class="pesquisa">
  <section class="breadcrumb-404">
	  <div class="breadcrumb-container" data-id="6d638ae" data-element_type="widget" data-widget_type="heading.default">
		  <div class="box-breadcrumb a ">
			  <h2 class="titulo-breadcrumb sand"><a href="<?php echo get_site_url(); ?>">Início</a><span> ↠ </span><a href="#">Pesquisa</a><span>: </span><a href="<?php echo get_permalink(); ?>"><?php the_search_query(); ?></a></h2>		
		  </div>
	  </div>
	</section>

<?php if ( have_posts() ) : ?>

         <!-- <h1 class="page-title"><?php // _e( 'Resultado da Pesquisa: ', 'seu-template' ); ?><span class="resultado"><?php // the_search_query(); ?></span></h1> -->

      <?php global $wp_query; $total_pages = $wp_query->max_num_pages; if ( $total_pages > 1 ) { ?>
          <div id="nav-above" class="navigation">
           <div class="nav-previous"><?php next_posts_link(__( '<span class="meta-nav">«</span> Anteriores', 'seu-template' )) ?></div>
           <div class="nav-next"><?php previous_posts_link(__( 'Novos <span class="meta-nav">»</span>', 'seu-template' )) ?></div>
          </div><!-- #nav-above -->
      <?php } ?>      
<div id="box-de-pesquisa">
      <?php while ( have_posts() ) : the_post() ?>

          <div id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
           <h2 class="entry-title pesquisa"><a href="<?php the_permalink(); ?>" title="<?php printf( __('Permalink to %s', 'your-theme'), the_title_attribute('echo=0') ); ?>" rel="bookmark">➞ <?php the_title(); ?></a></h2>

      <?php if ( $post->post_type == 'post' ) { ?>
           <div class="entry-meta">
            <span class="meta-prep meta-prep-author"><?php _e('Por ', 'seu-template'); ?></span>
            <span class="author vcard"><a class="url fn n" href="<?php echo get_author_link( false, $authordata->ID, $authordata->user_nicename ); ?>" title="<?php printf( __( 'View all posts by %s', 'seu-template' ), $authordata->display_name ); ?>"><?php the_author(); ?></a></span>
            <span class="meta-sep"> | </span>
            <span class="meta-prep meta-prep-entry-date"><?php _e('Publicado em ', 'seu-template'); ?></span>
            <span class="entry-date"><abbr class="published" title="<?php the_time('Y-m-d\TH:i:sO') ?>"><?php the_time( get_option( 'date_format' ) ); ?></abbr></span>
            <?php edit_post_link( __( 'Edit', 'seu-template' ), "<span class=\"meta-sep\">|</span>\n\t\t\t\t\t\t<span class=\"edit-link\">", "</span>\n\t\t\t\t\t" ) ?>
           </div><!-- .entry-meta -->
      <?php } ?>

           <div class="entry-summary">
      <?php the_excerpt( __( 'Ler mais <span class="meta-nav">»</span>', 'seu-template' )  ); ?>
      <?php wp_link_pages('before=<div class="page-link">' . __( 'Paginas:', 'seu-template' ) . '&after=</div>') ?>
           </div><!-- .entry-summary -->

      <?php if ( $post->post_type == 'post' ) { ?>
           <div class="entry-utility">
            <span class="cat-links"><?php echo get_the_category_list(', '); ?></span>
            <?php the_tags( '<span class="tag-links"><span class="entry-utility-prep entry-utility-prep-tag-links">' . __('Tagged ', 'seu-template' ) . '</span>', ", ", "</span>\n\t\t\t\t\t\t" ) ?>
            <!--<span class="comments-link"><?php //comments_popup_link( __( 'Deixe um comentario', 'seu-template' ), __( '1 Comment', 'seu-template' ), __( '% Comments', 'seu-template' ) ) ?></span>-->
            <?php edit_post_link( __( 'Editar', 'seu-template' ), "<span class=\"meta-sep\">|</span>\n\t\t\t\t\t\t<span class=\"edit-link\">", "</span>\n\t\t\t\t\t\n" ) ?>
           </div><!-- #entry-utility -->
      <?php } ?>
          </div><!-- #post-<?php the_ID(); ?> -->

      <?php endwhile; ?>

      <?php global $wp_query; $total_pages = $wp_query->max_num_pages; if ( $total_pages > 1 ) { ?>
        <!--<div id="nav-below" class="navigation">
           <div class="nav-previous"><?php// next_posts_link(__( '<span class="meta-nav">«</span> Antigas postagens', 'seu-template' )) ?></div>
           <div class="nav-next"><?php// previous_posts_link(__( 'Newer posts <span class="meta-nav">»</span>', 'seu-template' )) ?></div>
          </div> #nav-below -->
      <?php } ?>  

      <?php else : ?>

          <div id="post-0" class="post no-results not-found">
		  <center>
           <h1 class="entry-title sand"><span>404</span> Nada encontrado</h1><div class="conteudo-404">
         <p>Lamentamos, mas não conseguimos encontrar nada relacionado ao que foi digitado, <br>tente digitar de outra forma ou retornar a página inicial para melhor orientação</p><br>
       <?php get_search_form(); ?>
           </div><!-- .entry-content-->
		  </center>
          </div>

      <?php endif; ?> 
    </div>
  </div><!-- #content -->
 </div><!-- #container -->
<?php get_footer(); ?>