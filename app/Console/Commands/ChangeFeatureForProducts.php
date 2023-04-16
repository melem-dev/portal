<?php

namespace App\Console\Commands;

use Botble\Base\Models\MetaBox;
use Botble\Ecommerce\Models\Product;
use Illuminate\Console\Command;

class ChangeFeatureForProducts extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'product:feature';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Change products feature for true where created_at > 10 days';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        MetaBox::query()
            ->where('meta_key', 'is_popular')
            ->where('reference_type', 'Botble\Ecommerce\Models\Product')
            ->delete();
        $produtcs = Product::query()
            ->whereDate('created_at', now()->format('Y-m-d'))
            ->get();

        foreach ($produtcs as $produtc)
        {
            $meta = new MetaBox();
            $meta->reference_type = 'Botble\Ecommerce\Models\Product';
            $meta->reference_id = $produtc->id;
            $meta->meta_key = 'is_popular';
            $meta->meta_value = ["1"];
            $meta->save();
        }
    }
}
