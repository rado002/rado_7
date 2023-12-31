<?php get_header(); ?>

    <div class="main">
	    <div class="container">
    <?php if(have_posts()) : ?>
	    <?php while(have_posts()) : the_post(); ?>
            <h3>
            <a href="<?php the_permalink(); ?>">
            <?php the_title(); ?>
            </a>
            </h3>
            <div class="meta">
            Created by <?php the_author(); ?> on <?php the_date('l \t\h\e jS F \o\f\ Y'); ?> <br>
            <?php the_time('F Y g:i a'); ?>
            <?php the_content(); ?>    


                <?php endwhile; ?>
    <?php else : ?>
        <?php echo wpautop('Sorry, no posts were found'); ?>
    <?php endif; ?>
        </div>
    </div>

<?php get_footer(); ?>
