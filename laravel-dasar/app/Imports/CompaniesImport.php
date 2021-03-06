<?php

namespace App\Imports;

use App\Models\Companies;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\WithChunkReading;
use Maatwebsite\Excel\Concerns\WithUpserts;

class CompaniesImport implements ToModel, WithHeadingRow, WithChunkReading, WithUpserts
{
    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */
    public function model(array $row)
    {
        return new Companies([
            'name'  => $row['name'],
            'email' => $row['email'],
            'logo'    => 'company/default.png',
            'website' => $row['website'],
        ]);
    }

    public function uniqueBy()
    {
        return 'email';
    }

    public function chunkSize(): int
    {
        return 10;
    }
}
