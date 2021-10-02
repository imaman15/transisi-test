<?php

namespace App\Imports;

use App\Models\Employees;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\WithChunkReading;
use Maatwebsite\Excel\Concerns\WithUpserts;

class EmployeesImport implements ToModel, WithHeadingRow, WithChunkReading, WithUpserts
{
    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */
    public function model(array $row)
    {
        return new Employees([
            'name'  => $row['name'],
            'company_id'  => $row['company_id'],
            'email' => $row['email'],
        ]);
    }

    public function chunkSize(): int
    {
        return 10;
    }

    public function uniqueBy()
    {
        return 'email';
    }
}
