import ScannerPage from './pages/Scanner';
import PQCPage from './pages/PQC';
import ReportsPage from './pages/Reports';

function App() {
  return (
    <div className="p-6 space-y-6">
      <ScannerPage />
      <PQCPage />
      <ReportsPage />
    </div>
  );
}

export default App;

