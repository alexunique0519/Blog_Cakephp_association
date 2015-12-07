<div class="users form">
<?= $this->Flash->render('auth') ?>
<?= $this->Form->create() ?>
<div class="row" >
    <div class="col-md-4">
    </div>
    <div class="col-md-4">
        <div class="panel panel-info">
             <div class="panel-heading">
                 <h4 class="panel-title"><B>Sign Up</B></h4>
             </div>
            
             <div class="panel-body">
            <div class="form-group">
                <?= $this->Form->input('username',['class' => 'form-control']) ?>
            </div>
            <div class="form-group">    
                <?= $this->Form->input('password', ['class' => 'form-control']) ?>
            </div>
            <div class="form-group">
                <?= $this->Form->input('role', [
                    'options' => ['admin' => 'admin', 'user' => 'user'], 'class' => 'form-control'
                ]) ?>
            </div>         
            <div class="form-group">
                <?= $this->Form->button(__('Submit'), ['class' => 'btn btn-md btn-info form-control']); ?>
                <?= $this->Form->end() ?>
        
            </div>
        </div>
    </div>
     <div class="col-md-4">
    </div>
</div>