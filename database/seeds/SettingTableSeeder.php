<?php

use Illuminate\Database\Seeder;

class SettingTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data=array(
            'description'=> "MusicCore — лидер рынка розничной продажи музыкальных инструментов в России. Наши магазины предлагают лучшие музыкальные инструменты, созданные мировыми производителями",
            'short_des'=>"MusicCore — лидер рынка розничной продажи музыкальных инструментов в России. Наши магазины предлагают лучшие музыкальные инструменты, созданные мировыми производителями",
            'photo'=>"image.jpg",
            'logo'=>'logo.jpg',
            'address'=>"Россия, Челябинск, Савина 18",
            'email'=>"musiccore@gmail.com",
            'phone'=>"+7 951 435 31 35",
        );
        DB::table('settings')->insert($data);
    }
}
