# -*- mode: python ; coding: utf-8 -*-


block_cipher = None


a = Analysis(['C:\\Users\\Cracktus Heinkel\\AppData\\Roaming\\Citra\\sdmc\\Nintendo 3DS\\00000000000000000000000000000000\\00000000000000000000000000000000\\title\\00040000\\001c9d00\\data\\00000001\\_meta\\_3\\1_X2RhdGEy.py'],
             pathex=[],
             binaries=[],
             datas=[],
             hiddenimports=[],
             hookspath=[],
             hooksconfig={},
             runtime_hooks=[],
             excludes=[],
             win_no_prefer_redirects=False,
             win_private_assemblies=False,
             cipher=block_cipher,
             noarchive=False)
pyz = PYZ(a.pure, a.zipped_data,
             cipher=block_cipher)

exe = EXE(pyz,
          a.scripts, 
          [],
          exclude_binaries=True,
          name='1_X2RhdGEy',
          debug=False,
          bootloader_ignore_signals=False,
          strip=False,
          upx=True,
          console=True,
          disable_windowed_traceback=False,
          target_arch=None,
          codesign_identity=None,
          entitlements_file=None )
coll = COLLECT(exe,
               a.binaries,
               a.zipfiles,
               a.datas, 
               strip=False,
               upx=True,
               upx_exclude=[],
               name='1_X2RhdGEy')
