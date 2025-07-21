import React from 'react';

export default function PQCPage() {
  return (
    <div className="bg-white shadow rounded p-6 space-y-4">
      <h1 className="text-2xl font-bold text-gray-800">🛡 Post-Quantum Key Generator</h1>
      <p className="text-gray-600">Generate Kyber or Dilithium keypairs securely for post-quantum readiness.</p>
      <div className="space-y-2">
        <select className="w-full border rounded px-3 py-2 text-gray-700">
          <option>Kyber512</option>
          <option>Kyber768</option>
          <option>Dilithium2</option>
        </select>
        <button className="bg-green-600 text-white px-4 py-2 rounded hover:bg-green-700">Generate Keypair</button>
      </div>
    </div>
  );
}
