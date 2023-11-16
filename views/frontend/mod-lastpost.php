<?php

use App\Models\Post;

$mod_list_post = Post::where([['status', '=', 1],['type','=','post']])
   ->select('title', 'slug', 'detail','image')
   ->get();

?>
<section class="hdl-lastpost bg-main mt-3 py-4">
   <div class="container">
      <div class="row">
         <div class="col-12 articleRelate mb-4">
         <i class="fa-solid fa-fire-flame-curved" style="color: #f70838;"></i>
               <strong>BÀI VIẾT MỚI NHẤT</strong>
            <div class="row">
            <?php foreach ($mod_list_post as $mod_row_post) : ?>
               <div class="post-item col-12 col-md-3 mt-3" >
                  <div class="post-thumb"> 
                     <a href="index.php?option=post&cat=<?= $mod_row_post->slug; ?>">
                        <img class="img-fluid" class="w-100 lazyload" data-sizes="auto" src="public/images/post/<?= $mod_row_post->image; ?>" alt="<?= $mod_row_post->slug; ?>">
                     </a>
                  </div>
                  <div class="post-meta">
                     <h6 class="index.php?option=page&cat=<?= $mod_row_post->slug; ?>"> <?= $mod_row_post->title; ?></a></h6>
                  </div>
               </div>
            <?php endforeach; ?>
            </div>
         </div>
      </div>
   </div>
</section>
