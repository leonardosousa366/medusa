<?php get_header(); ?>
<main class="wrap">
  <section class="content-area full-width <?php the_title(); ?> singular-php">
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
      <article class="article-full">
        <?php the_content(); ?>
      </article>
<?php endwhile; else : ?>
      <article>
        <p>Lamento, consteúdo não encontrado</p>
      </article>
<?php endif; ?>
  </section><section class="barra-lateral"><?php //get_sidebar('tb_sidebar'); ?></section>
</main>
<?php get_footer(); ?>