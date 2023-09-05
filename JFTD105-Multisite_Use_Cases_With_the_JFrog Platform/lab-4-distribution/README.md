# LAB 4 - Distribution of Artifacts

## Prerequisites
- Lab-0 - Configure JFrog CLI
- Lab-1 - Repository Provisioning

### CREATE RELEASE BUNDLE
- Run ``jf ds rbc --spec=rb-spec.json rb_swamp 1.0.0.<YY> --desc="release candidate"``

### SIGN RELEASE BUNDLE
- Run ``jf ds rbs rb_swamp 1.0.0.<YY>``

### DISTRIBUTE RELEASE BUNDLE
- Run ``jf ds rbd --dist-rules=dist-rules.json rb_swamp 1.0.0.<YY>``
    - we need to update ``dist-rules.json`` with our own edge. Example `swampupedge`
