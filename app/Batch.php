<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Batch extends Model
{
     protected $table = 'batches';
     protected $fillable=['batch'];
     protected $primarykey='batch_id';
     public $timestamps=false;
}
