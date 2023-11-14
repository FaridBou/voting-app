import http from 'k6/http';
import { sleep, check } from 'k6';

export default function () {
  let res = http.get('c:\Users\k1rif\OneDrive\Bureau\Formation\Devops\voting-app');  // Remplacez par l'URL de votre application
  check(res, {
    'status is 200': (r) => r.status === 200,
  });
  sleep(1);
}
