import React from 'react';

export default function ReportsPage() {
  return (
    <div className="bg-white shadow rounded p-6 space-y-4">
      <h1 className="text-2xl font-bold text-gray-800">📊 Compliance Reports</h1>
      <p className="text-gray-600">Review and download reports to assist with audits and regulatory compliance.</p>
      <div className="space-y-2">
        <ul className="list-disc pl-6 text-gray-700">
          <li>Scan Report - July 2025</li>
          <li>PQC Key Audit - July 2025</li>
        </ul>
        <div className="flex space-x-4">
          <button className="bg-gray-800 text-white px-4 py-2 rounded hover:bg-gray-900">Download PDF</button>
          <button className="bg-gray-400 text-white px-4 py-2 rounded hover:bg-gray-500">Download Excel</button>
        </div>
      </div>
    </div>
  );
}
