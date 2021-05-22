<?php get_header(); ?>
<!-- <div class="post-breadcrumb"><h1><?php the_title(); ?></h1></div>-->
<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
<?php the_content(); ?>
<?php endwhile; else : ?>
      <article>
        <p>Lamento, consteúdo não encontrado</p>
      </article>
<?php endif; ?>
<?php get_footer(); ?>