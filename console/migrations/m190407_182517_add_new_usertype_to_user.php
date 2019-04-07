<?php

use yii\db\Migration;

/**
 * Class m190407_182517_add_new_usertype_to_user
 */
class m190407_182517_add_new_usertype_to_user extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {

    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m190407_182517_add_new_usertype_to_user cannot be reverted.\n";

        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m190407_182517_add_new_usertype_to_user cannot be reverted.\n";

        return false;
    }
    */
}
