<?php
/**
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @since         0.10.0
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */

?>
<!DOCTYPE html>
<html>
<head>
    <?= $this->Html->charset() ?>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>
      CakePHP: Blog App
    </title>
    <?= $this->Html->meta('icon') ?>

    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
     <?= $this->Html->css('site.css') ?>

     <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
     

    <?= $this->fetch('meta') ?>
    <?= $this->fetch('css') ?>
    <?= $this->fetch('script') ?>
</head>
<body>
    
    <nav class="navbar navbar-default">
        <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#dropdown_menu" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </button>
                    <?= $this->Html->link('Blog App', ['controller' => 'Articles','action' => 'index'], ['class' => 'navbar-brand']); ?>
                </div>
                
                <div class="collapse navbar-collapse" id="dropdown_menu">

                    <ul class="nav navbar-nav navbar-right">
                        
                        
                        <li>
                         <a id="user"><?php $user = $this->request->session()->read('Auth.User');
                             
                             if(!empty($user))
                             {
                                 echo "Welcome" ." ".$user['username'];
                                
                             }
                            
                           ?>
                         </a>    
                        </li>
                        <li>
                            <?php
                                 $user = $this->request->session()->read('Auth.User');
                                 if(empty($user)){
                                 echo $this->Html->link('Login', ['controller' => 'users','action' => 'login'], ['id' => 'login'] );
                             }
                            ?>
                                        
                        </li>
                        <li>
                            
                             <?php
                                 $user = $this->request->session()->read('Auth.User');
                                 if(!empty($user)){
                                echo  $this->Html->link('Logout', ['controller' => 'users','action' => 'logout'], ['id' => 'logout'] );
                             }
                            ?>
                            
                        </li>
                    
                    </ul>

                </div>
       </div>

    </nav>


        
    <?= $this->Flash->render() ?>
    <section class="container clearfix">
        <?= $this->fetch('content') ?>
    </section>
    <footer>
    </footer>
</body>
</html>
