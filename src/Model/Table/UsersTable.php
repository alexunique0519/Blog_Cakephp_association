<?php
// src/Model/Table/ArticlesTable.php

namespace App\Model\Table;

use Cake\ORM\Table;
use Cake\Validation\Validator;


class UsersTable extends Table
{
    public function initialize(array $config)
    {
        $this->addBehavior('Timestamp');
    
    }


    public function validationDefault(Validator $validator)
    {
    	return $validator
    		->notEmpty('username', 'The username cannot be empty')
    		->notEmpty('password', 'The password cannot be empty')
    		->notEmpty('role', 'The user role cannot be empty')
    		->add('role', 'inList', ['rule' => ['inList', ['admin', 'user']], 'message' => 'Please select a valid role']);

    }


}





?>