<?php get_header(); ?><div class="post-breadcrumb"><h1><?php the_title(); ?></h1></div>
<main class="wrap d-flex"><section class="pagina-com-sidebar index-php">
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
      <article class="article-full">
       <?php the_content(); ?>
      </article>
<?php endwhile; else : ?>
      <article>
        <p>Lamento, consteúdo não encontrado</p>
      </article>
<?php endif; ?>
  </section><section class="sidebar-da-pagina"><?php get_sidebar('tb_sidebar'); ?></section>
</main>
<?php get_footer(); ?>