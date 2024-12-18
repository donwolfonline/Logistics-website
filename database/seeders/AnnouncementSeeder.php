<?php

namespace Database\Seeders;

use ArchiElite\Announcement\Models\Announcement;
use Botble\Base\Supports\BaseSeeder;
use Botble\Setting\Facades\Setting;
use Carbon\Carbon;

class AnnouncementSeeder extends BaseSeeder
{
    public function run(): void
    {
        Announcement::query()->truncate();

        $announcements = [
            'Unlock Your Business Potential: Exclusive Logistics Exam Reveals Cost-Saving Strategies and Growth Opportunities!',
            'Attention Entrepreneurs: Elevate Your Logistics Game with Insider Tips from our Exclusive Exam - Limited Slots Available!',
            'Small Business Alert: Maximize Efficiency and Minimize Costs with Our Logistics Exam - Act Now for Special Discounts!',
        ];

        $now = Carbon::now();

        foreach ($announcements as $key => $value) {
            Announcement::query()->create([
                'name' => sprintf('Announcement %s', $key + 1),
                'content' => $value,
                'start_date' => $now,
                'dismissible' => true,
            ]);
        }

        $settings = [
            'announcement_max_width' => '1386',
            'announcement_text_color' => '#00194C',
            'announcement_background_color' => '#ffe799',
            'announcement_text_alignment' => 'start',
            'announcement_dismissible' => '1',
        ];

        Setting::delete(array_keys($settings));

        Setting::set($settings)->save();
    }
}
