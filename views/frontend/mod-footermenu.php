<?php
use App\Models\Menu;
$mod_footermenu = Menu::where([['position','=','footermenu'],['status','=',1]])
     ->orderBy('sort_order','ASC')
     ->get();
?>
<h3 class="widgettilte">
                  <strong>Liên hệ</strong>
               </h3>
               <ul class="footer-menu">
                  <?php foreach($mod_footermenu as $rowmenu): ?>

                  <li><a href="<?= $rowmenu->link; ?>"><?= $rowmenu->name; ?> </a></li>
                  <?php endforeach; ?>
                  
               </ul>
               <div>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d244.8932936175782!2d106.76202747469141!3d10.865327899931657!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752784528586f1%3A0x9374d7a1b0d58f47!2zMTI3MiDEkC4gS2hhIFbhuqFuIEPDom4sIFBoxrDhu51uZyBMaW5oIFRydW5nLCBUaOG7pyDEkOG7qWMsIFRow6BuaCBwaOG7kSBI4buTIENow60gTWluaCwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1700054996932!5m2!1svi!2s" width="400" height="350" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>  
                      </div>