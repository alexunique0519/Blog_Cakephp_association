<!-- File: src/Template/Users/login.ctp -->

<div class="users form">
<?= $this->Flash->render('auth') ?>
<?= $this->Form->create() ?>
<div class="row" >
    <div class="col-md-4">
    </div>
    <div class="col-md-4">
        <div class="panel panel-info">
             <div class="panel-heading">
                 <h4 class="panel-title"><B>Login</B></h4>
             </div>
            
             <div class="panel-body">
               <div class="form-group">
                <?= $this->Form->input('username', ['class' => 'form-control']) ?>
               </div>
               <div class="form-group">
                <?= $this->Form->input('password', ['class' => 'form-control']) ?>
               </div>
                 <?= $this->Form->button(__('Login'), ['class' => 'btn btn-info form-control']); ?>
               <div class="form-group" id="signUp">
               <?= $this->html->link( 'Sign up', ['controller' => 'users','action' => 'add'], ['class' => 'btn btn-success form-control'])?>
               </div>
             </div>
        </div>
    </div>
    <div class="col-md-4">
    </div>
</div>
<?= $this->Form->end() ?>
</div>


