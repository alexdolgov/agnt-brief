pragma solidity ^0.8.0;

contract StringNumbersConstant {

   // Decimals Numbers
   uint public constant DECIMALS_18 = 1e18;
   uint public constant START_DEPOSIT_LIMIT = DECIMALS_18 * 100; // 100 DAI

   // Date and times
   uint public constant TIME_7D = 60*60*24*7;
   uint public constant TIME_1D = 60*60*24;
   uint public constant TIME_30D = 60*60*24*30;
   uint public constant TIME_1Y = 60*60*24*365;
   
   // Storage Sizes
   uint public constant STORAGE_1TB_IN_MB = 1048576;
   uint public constant STORAGE_10GB_IN_MB = 10240; // 10 GB;
  
   /**

        @notice Max blocks after proof needs to use newest proof as it possible
        For other netowrks it will be:
        @dev
        Expanse ~ 1.5H
        Ethereum ~ 54 min
        Optimistic ~ 54 min
        Ethereum Classic ~ 54 min
        POA Netowrk ~ 20 min
        Kovan Testnet ~ 16 min
        BinanceSmart Chain ~ 12.5 min
        Polygon ~ 8 min
        Avalanche ~ 8 min
   */
   uint public constant MAX_BLOCKS_AFTER_PROOF = 256;

   /*
      Polygon Network Settigns
   */
   address public constant PAIR_TOKEN_START_ADDRESS = 0x8f3Cf7ad23Cd3CaDbD9735AFf958023239c6A063; // DAI in Polygon
   address public constant DEFAULT_FEE_COLLECTOR = 0x5f84192D83A49C2D7Aac6C859a7BDABf18e970b8; // DeNet Labs Polygon Multisig
   uint public constant NETWORK_ID = 137;

   /*
      StorageToken Default Vars
   */
   uint16 public constant DIV_FEE = 10000;
   uint16 public constant START_PAYOUT_FEE = 500; // 5%
   uint16 public constant START_PAYIN_FEE = 500; // 5%
   uint16 public constant START_MINT_PERCENT = 5000; // 50% from fee will minted
   uint16 public constant START_UNBURN_PERCENT = 5000; // 50% from fee will not burned
   

}