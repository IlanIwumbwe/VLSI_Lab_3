## Task 1

1. Memory layout looks like this:
Number of Words = 32
Number of Bits = 32
Column Mux Ratio = 4
Name of Ground pin = VSS
BIST_Enable = no

<img width="481" height="200" alt="Screenshot from 2025-10-23 12-24-36" src="https://github.com/user-attachments/assets/7eb63b0b-9c01-4649-9766-27e7ff1ac361" />

3. Netlist of memory block has input ports `A` and `D` for address and data write to the memory, output ports is `Q` for data read from the memory.

4. Importing the GDSII layout
<img width="2167" height="701" alt="Screenshot from 2025-10-23 13-12-03" src="https://github.com/user-attachments/assets/017e6f9c-89b8-4bbf-bbd2-7dc2438d3778" />

## Task 2

Implemented this design:

<img width="852" height="308" alt="image" src="https://github.com/user-attachments/assets/174d3b99-eb09-49b0-99b1-5fffd5e53319" />


<img width="1544" height="811" alt="Screenshot from 2025-10-24 15-44-53" src="https://github.com/user-attachments/assets/49284404-d8ec-4b78-a395-8d2b43c3cbe3" />

Physical layout of ram block with circuit
<img width="1544" height="811" alt="image" src="https://github.com/user-attachments/assets/cfcd1521-0274-4e8a-873e-1713adf7f904" />

Testbench:
```
T:                  350 #: 0 MDL: ffff	 DUT: ffff --> PASS

T:                  360 #: 1 MDL: fffe	 DUT: fffe --> PASS

T:                  370 #: 2 MDL: fffc	 DUT: fffc --> PASS

T:                  380 #: 3 MDL: fff8	 DUT: fff8 --> PASS

T:                  390 #: 4 MDL: fff0	 DUT: fff0 --> PASS

T:                  400 #: 5 MDL: ffe1	 DUT: ffe1 --> PASS

T:                  410 #: 6 MDL: ffc3	 DUT: ffc3 --> PASS

T:                  420 #: 7 MDL: ff87	 DUT: ff87 --> PASS

T:                  430 #: 8 MDL: ff0f	 DUT: ff0f --> PASS

T:                  440 #: 9 MDL: fe1e	 DUT: fe1e --> PASS

T:                  450 #:10 MDL: fc3c	 DUT: fc3c --> PASS

T:                  460 #:11 MDL: f878	 DUT: f878 --> PASS

T:                  470 #:12 MDL: f0f0	 DUT: f0f0 --> PASS

T:                  480 #:13 MDL: e1e1	 DUT: e1e1 --> PASS

T:                  490 #:14 MDL: c3c2	 DUT: c3c2 --> PASS

T:                  500 #:15 MDL: 8784	 DUT: 8784 --> PASS

T:                  510 #:16 MDL: 0f09	 DUT: 0f09 --> PASS

T:                  520 #:17 MDL: 1e13	 DUT: 1e13 --> PASS

T:                  530 #:18 MDL: 3c27	 DUT: 3c27 --> PASS

T:                  540 #:19 MDL: 784f	 DUT: 784f --> PASS

T:                  550 #:20 MDL: f09f	 DUT: f09f --> PASS

T:                  560 #:21 MDL: e13e	 DUT: e13e --> PASS

T:                  570 #:22 MDL: c27d	 DUT: c27d --> PASS

T:                  580 #:23 MDL: 84fb	 DUT: 84fb --> PASS

T:                  590 #:24 MDL: 09f6	 DUT: 09f6 --> PASS

T:                  600 #:25 MDL: 13ec	 DUT: 13ec --> PASS

T:                  610 #:26 MDL: 27d8	 DUT: 27d8 --> PASS

T:                  620 #:27 MDL: 4fb1	 DUT: 4fb1 --> PASS

T:                  630 #:28 MDL: 9f63	 DUT: 9f63 --> PASS

T:                  640 #:29 MDL: 3ec6	 DUT: 3ec6 --> PASS

T:                  650 #:30 MDL: 7d8d	 DUT: 7d8d --> PASS

T:                  660 #:31 MDL: fb1b	 DUT: fb1b --> PASS

T:                  990 #: 0 MDL: f636	 DUT: f636 --> PASS

T:                 1000 #: 1 MDL: ec6d	 DUT: ec6d --> PASS

T:                 1010 #: 2 MDL: d8db	 DUT: d8db --> PASS

T:                 1020 #: 3 MDL: b1b6	 DUT: b1b6 --> PASS

T:                 1030 #: 4 MDL: 636c	 DUT: 636c --> PASS

T:                 1040 #: 5 MDL: c6d8	 DUT: c6d8 --> PASS

T:                 1050 #: 6 MDL: 8db1	 DUT: 8db1 --> PASS

T:                 1060 #: 7 MDL: 1b63	 DUT: 1b63 --> PASS

T:                 1070 #: 8 MDL: 36c7	 DUT: 36c7 --> PASS

T:                 1080 #: 9 MDL: 6d8f	 DUT: 6d8f --> PASS

T:                 1090 #:10 MDL: db1e	 DUT: db1e --> PASS

T:                 1100 #:11 MDL: b63c	 DUT: b63c --> PASS

T:                 1110 #:12 MDL: 6c79	 DUT: 6c79 --> PASS

T:                 1120 #:13 MDL: d8f2	 DUT: d8f2 --> PASS

T:                 1130 #:14 MDL: b1e5	 DUT: b1e5 --> PASS

T:                 1140 #:15 MDL: 63ca	 DUT: 63ca --> PASS

T:                 1150 #:16 MDL: c794	 DUT: c794 --> PASS

T:                 1160 #:17 MDL: 8f28	 DUT: 8f28 --> PASS

T:                 1170 #:18 MDL: 1e50	 DUT: 1e50 --> PASS

T:                 1180 #:19 MDL: 3ca1	 DUT: 3ca1 --> PASS

T:                 1190 #:20 MDL: 7943	 DUT: 7943 --> PASS

T:                 1200 #:21 MDL: f286	 DUT: f286 --> PASS

T:                 1210 #:22 MDL: e50d	 DUT: e50d --> PASS

T:                 1220 #:23 MDL: ca1b	 DUT: ca1b --> PASS

T:                 1230 #:24 MDL: 9437	 DUT: 9437 --> PASS

T:                 1240 #:25 MDL: 286e	 DUT: 286e --> PASS

T:                 1250 #:26 MDL: 50dd	 DUT: 50dd --> PASS

T:                 1260 #:27 MDL: a1bb	 DUT: a1bb --> PASS

T:                 1270 #:28 MDL: 4376	 DUT: 4376 --> PASS

T:                 1280 #:29 MDL: 86ed	 DUT: 86ed --> PASS

T:                 1290 #:30 MDL: 0dda	 DUT: 0dda --> PASS

T:                 1300 #:31 MDL: 1bb5	 DUT: 1bb5 --> PASS

T:                 1630 #: 0 MDL: 376b	 DUT: 376b --> PASS

T:                 1640 #: 1 MDL: 6ed6	 DUT: 6ed6 --> PASS

T:                 1650 #: 2 MDL: ddad	 DUT: ddad --> PASS

T:                 1660 #: 3 MDL: bb5a	 DUT: bb5a --> PASS

T:                 1670 #: 4 MDL: 76b5	 DUT: 76b5 --> PASS

T:                 1680 #: 5 MDL: ed6a	 DUT: ed6a --> PASS

T:                 1690 #: 6 MDL: dad5	 DUT: dad5 --> PASS

T:                 1700 #: 7 MDL: b5ab	 DUT: b5ab --> PASS

T:                 1710 #: 8 MDL: 6b57	 DUT: 6b57 --> PASS

T:                 1720 #: 9 MDL: d6af	 DUT: d6af --> PASS

T:                 1730 #:10 MDL: ad5e	 DUT: ad5e --> PASS

T:                 1740 #:11 MDL: 5abc	 DUT: 5abc --> PASS

T:                 1750 #:12 MDL: b579	 DUT: b579 --> PASS

T:                 1760 #:13 MDL: 6af3	 DUT: 6af3 --> PASS

T:                 1770 #:14 MDL: d5e7	 DUT: d5e7 --> PASS

T:                 1780 #:15 MDL: abcf	 DUT: abcf --> PASS

T:                 1790 #:16 MDL: 579e	 DUT: 579e --> PASS

T:                 1800 #:17 MDL: af3d	 DUT: af3d --> PASS

T:                 1810 #:18 MDL: 5e7a	 DUT: 5e7a --> PASS

T:                 1820 #:19 MDL: bcf5	 DUT: bcf5 --> PASS

T:                 1830 #:20 MDL: 79ea	 DUT: 79ea --> PASS

T:                 1840 #:21 MDL: f3d5	 DUT: f3d5 --> PASS

T:                 1850 #:22 MDL: e7ab	 DUT: e7ab --> PASS

T:                 1860 #:23 MDL: cf57	 DUT: cf57 --> PASS

T:                 1870 #:24 MDL: 9eae	 DUT: 9eae --> PASS

T:                 1880 #:25 MDL: 3d5d	 DUT: 3d5d --> PASS

T:                 1890 #:26 MDL: 7aba	 DUT: 7aba --> PASS

T:                 1900 #:27 MDL: f575	 DUT: f575 --> PASS

T:                 1910 #:28 MDL: eaeb	 DUT: eaeb --> PASS

T:                 1920 #:29 MDL: d5d7	 DUT: d5d7 --> PASS

T:                 1930 #:30 MDL: abaf	 DUT: abaf --> PASS

T:                 1940 #:31 MDL: 575e	 DUT: 575e --> PASS

T:                 2270 #: 0 MDL: aebd	 DUT: aebd --> PASS

T:                 2280 #: 1 MDL: 5d7a	 DUT: 5d7a --> PASS

T:                 2290 #: 2 MDL: baf5	 DUT: baf5 --> PASS

T:                 2300 #: 3 MDL: 75ea	 DUT: 75ea --> PASS

T:                 2310 #: 4 MDL: ebd5	 DUT: ebd5 --> PASS

T:                 2320 #: 5 MDL: d7aa	 DUT: d7aa --> PASS

T:                 2330 #: 6 MDL: af54	 DUT: af54 --> PASS

T:                 2340 #: 7 MDL: 5ea9	 DUT: 5ea9 --> PASS

T:                 2350 #: 8 MDL: bd53	 DUT: bd53 --> PASS

T:                 2360 #: 9 MDL: 7aa6	 DUT: 7aa6 --> PASS

T:                 2370 #:10 MDL: f54c	 DUT: f54c --> PASS

T:                 2380 #:11 MDL: ea98	 DUT: ea98 --> PASS

T:                 2390 #:12 MDL: d531	 DUT: d531 --> PASS

T:                 2400 #:13 MDL: aa63	 DUT: aa63 --> PASS

T:                 2410 #:14 MDL: 54c7	 DUT: 54c7 --> PASS

T:                 2420 #:15 MDL: a98e	 DUT: a98e --> PASS

T:                 2430 #:16 MDL: 531c	 DUT: 531c --> PASS

T:                 2440 #:17 MDL: a639	 DUT: a639 --> PASS

T:                 2450 #:18 MDL: 4c72	 DUT: 4c72 --> PASS

T:                 2460 #:19 MDL: 98e5	 DUT: 98e5 --> PASS

T:                 2470 #:20 MDL: 31ca	 DUT: 31ca --> PASS

T:                 2480 #:21 MDL: 6394	 DUT: 6394 --> PASS

T:                 2490 #:22 MDL: c729	 DUT: c729 --> PASS

T:                 2500 #:23 MDL: 8e53	 DUT: 8e53 --> PASS

T:                 2510 #:24 MDL: 1ca7	 DUT: 1ca7 --> PASS

T:                 2520 #:25 MDL: 394f	 DUT: 394f --> PASS

T:                 2530 #:26 MDL: 729e	 DUT: 729e --> PASS

T:                 2540 #:27 MDL: e53d	 DUT: e53d --> PASS

T:                 2550 #:28 MDL: ca7b	 DUT: ca7b --> PASS

T:                 2560 #:29 MDL: 94f7	 DUT: 94f7 --> PASS

T:                 2570 #:30 MDL: 29ee	 DUT: 29ee --> PASS

T:                 2580 #:31 MDL: 53dd	 DUT: 53dd --> PASS

```

Data write:
<img width="1669" height="156" alt="Screenshot from 2025-10-24 17-16-33" src="https://github.com/user-attachments/assets/2520bab4-6b4f-407f-9ecc-59e622b9a346" />

Data read:
<img width="1669" height="156" alt="Screenshot from 2025-10-24 17-16-08" src="https://github.com/user-attachments/assets/70287662-dd13-4392-bb7d-5c5ba138b51c" />
