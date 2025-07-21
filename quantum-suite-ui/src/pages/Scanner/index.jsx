import React from 'react';

export default function ScannerPage() {
  return (
    <div className="bg-white shadow rounded p-6 space-y-4">
      <h1 className="text-2xl font-bold text-gray-800">🔍 Encryption Scanner</h1>
      <p className="text-gray-600">Scan codebases or config files for weak or legacy encryption algorithms.</p>
      <div className="space-y-2">
        <input type="file" multiple className="block w-full text-sm text-gray-500 file:mr-4 file:py-2 file:px-4 file:rounded-full file:border-0 file:text-sm file:font-semibold file:bg-blue-50 file:text-blue-700 hover:file:bg-blue-100" />
        <select className="w-full border rounded px-3 py-2 text-gray-700">
          <option>R001 - RSA 512</option>
          <option>R002 - ECC Weak Curve</option>
          <option>R003 - Deprecated TLS</option>
        </select>
        <button className="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700">Start Scan</button>
      </div>
    </div>
  );
}
