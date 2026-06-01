#!/bin/bash
# Formation cloud HEH — déploiement automatique du serveur web de démonstration
set -euo pipefail

dnf install -y httpd
systemctl enable --now httpd

cat > /var/www/html/index.html << 'HTMLEOF'
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Votre serveur est en vie !</title>
  <style>
    * { box-sizing: border-box; margin: 0; padding: 0; }
    body {
      font-family: 'Segoe UI', Arial, sans-serif;
      background: linear-gradient(160deg, #a8d8ea 0%, #57a0d3 50%, #2979a4 100%);
      min-height: 100vh;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      text-align: center;
      padding: 2rem;
    }
    .cloud-wrap {
      position: relative;
      display: inline-block;
      margin-bottom: 1.5rem;
      animation: float 4s ease-in-out infinite;
    }
    .cloud { font-size: 9rem; display: block; line-height: 1; }
    .cat {
      position: absolute;
      font-size: 4rem;
      top: 22%;
      left: 50%;
      transform: translateX(-50%);
    }
    @keyframes float {
      0%, 100% { transform: translateY(0); }
      50%       { transform: translateY(-20px); }
    }
    h1 {
      font-size: 2.6rem;
      font-weight: 900;
      color: white;
      text-shadow: 0 2px 8px rgba(0,0,0,.25);
      margin-bottom: .4rem;
    }
    .badge {
      display: inline-block;
      background: #27ae60;
      color: white;
      font-size: .9rem;
      font-weight: 700;
      padding: .3rem 1rem;
      border-radius: 99px;
      margin-bottom: 2rem;
      text-transform: uppercase;
      letter-spacing: .05em;
    }
    .card {
      background: rgba(255,255,255,.85);
      backdrop-filter: blur(12px);
      border-radius: 1.5rem;
      padding: 2rem 2.5rem;
      max-width: 560px;
      box-shadow: 0 16px 48px rgba(0,0,0,.15);
    }
    .card p { font-size: 1.1rem; line-height: 1.7; margin-bottom: .8rem; }
    .card p:last-child { margin-bottom: 0; }
    strong { color: #2979a4; }
    .footer {
      margin-top: 2rem;
      font-size: .85rem;
      color: rgba(255,255,255,.7);
    }
  </style>
</head>
<body>
  <div class="cloud-wrap">
    <span class="cloud">&#x2601;&#xFE0F;</span>
    <span class="cat">&#x1F431;</span>
  </div>
  <h1>Votre serveur est EN VIE&nbsp;!</h1>
  <div class="badge">&#x1F680; D&eacute;ploiement r&eacute;ussi</div>
  <div class="card">
    <p>F&eacute;licitations&nbsp;! Vous venez de d&eacute;ployer votre
      <strong>premier serveur web dans le cloud AWS</strong>.</p>
    <p>C'est <strong>ABSOLUMENT FANTASTIQUE</strong>&nbsp;! &#x1F389;</p>
    <p>Quelque part dans un data center en Virginie du Nord,
      une machine virtuelle a d&eacute;marr&eacute; <em>juste pour vous</em>,
      et elle est tr&egrave;s fi&egrave;re de vous accueillir.</p>
    <p>Le chat dans le nuage aussi.&nbsp;&#x1F60C;</p>
  </div>
  <div class="footer">Servi depuis EC2 &bull; us-east-1 &bull; Amazon Linux 2023</div>
</body>
</html>
HTMLEOF
