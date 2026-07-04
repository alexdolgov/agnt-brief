// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

import "./IHelixDealStats.sol";

abstract contract IHelixDeal is IHelixDealStats {
  enum InvestmentStatus {
    Invested
  }

  enum RepaymentTransactionType {
    Principal,
    Return
  } 

  struct Repayment {
    RepaymentTransactionType txType;
    bytes32 txHash;
    address investor;
    uint256 principalRepaid;
    uint256 returnPaid;
  }

  struct Investment {
    uint256 investmentDate;
    uint256 amount;
    InvestmentStatus status;
  }

  /// @notice Change deal wallet address
  /// @dev Only be called by deal manager
  /// @param _dealWallet New deal wallet address
  function changeDealWallet(
    address _dealWallet
  ) external virtual;

  /**
   * @notice Initialize a new deal
   * @param _addresses An array of address includes: 
   *  - HelixConfig contract, 
   *  - Manager wallet contract (GnosisSafe), 
   *  - deal wallet address, 
   *  - Investment token address
   *  - Borrower address.
   * @param _allowedUIDTypes An array that use for defining the list of allowed Manager type 
  */
  function initialize(
    // config - manager wallet - deal wallet - token - borrower wallet
    address[5] calldata _addresses,
    uint256[] calldata _allowedUIDTypes
  ) public virtual;

  /**
    * @notice Investor invests token in the deal
    * @param investmentDate The subscription date of the investments
    * @param amount The amount that investor will need to deposit
    * @param expirationTime How long the signature from deal manager will be valid 
    * @param salt Random identifier for generating unique investment hash 
    * @param investSignature The signature that has been signed by dealManager to allow sender to invest
  */
  function invest(
    uint256 investmentDate,
    uint256 amount,
    uint256 expirationTime,
    uint256 salt,
    bytes calldata investSignature
  ) public virtual;

  /**
    * @notice Investor invests token in the deal without executing approve transaction
    * @param investmentDate The subscription date of the investments
    * @param amount The amount that investor will need to deposit
    * @param expirationTime How long the signature from deal manager will be valid 
    * @param salt Random identifier for generating unique investment hash
    * @param investSignature The signature that has been signed by dealManager to allow sender to invest
    * @param deadline The deadline of permit signature (ERC-Permit). Ex: USDC
    * @param v v of signature
    * @param r r of signature
    * @param s s of signature
  */
  function investWithPermit(
    uint256 investmentDate,
    uint256 amount,
    uint256 expirationTime,
    uint256 salt,
    bytes calldata investSignature,
    // USDC permit condition
    uint256 deadline,
    uint8 v,
    bytes32 r,
    bytes32 s
  ) public virtual;

  /**
   * @notice Book verified 'repayments of principal' or 'payments of investment return', and update the deal TVL
   * @dev This function will update the TVL, update Helix Deal tokens NFT details. And will also emit logs to reflect the update in TVL 
   * as well as underlying transaction hashes
   * @param _repayments An array of Repayment Transaction Objects where each object includes: 
   *  RepaymentTransactionType txType; -> 0: Principal, 1: Return
      bytes32 txHash; -> Repayment Transaction Hash
      address investor; -> Investor address
      uint256 principalRepaid; -> principal repaid
      uint256 returnPaid; -> investment return paid
  */
  function bookRepayments(Repayment[] calldata _repayments) external virtual;

  /**
    * @notice Cancel an investment once it has been approved by multi-Sig approvers but before the Investor has supplied capital (i.e. before invest is triggered)
    * @param account Investor address.
    * @param investmentDate Investor investment date (informational).
    * @param amount Pre-defined Investment amount.
    * @param expirationTime How long the signature from deal manager will be valid.
    * @param salt Random identifier for generating unique investment hash.
  */
  function cancelInvestment(
    address account, 
     uint256 investmentDate,
    uint256 amount,
    uint256 expirationTime,
    uint256 salt
  ) public virtual;

  /// @notice calculate TVL of the current deal
  /// @dev Total TVL = total investment - total repaid principal
  function dealTVL() public virtual view returns(uint256);

  /// @notice get statistics of the current deal
  function dealStats() public virtual view returns(DealStats memory);

  /// @notice Check if an account own UID or in go-list
  /// @param sender Account's address 
  function hasAllowedUID(address sender) public view virtual returns (bool);
  
  // ============= Events =============== // 
  event Invested(
    address indexed investor,
    address indexed deal,
    address indexed dealWallet,
    uint256 investmentDate,
    uint256 amount,
    uint256 salt,
    uint256 expirationTime,
    bytes32 investmentHash
  );

  event Cancelled(
    address indexed account, 
    uint256 investmentDate, 
    uint256 amount,
    uint256 salt,
    bytes32 indexed hashInfo
  );

  event DealWalletUpdated(
    address indexed oldWallet,
    address indexed newWallet
  );

  event RepaymentBooked(
    bytes32 indexed txHash,
    address indexed investor,
    RepaymentTransactionType txType,
    uint256 principalRepaid,
    uint256 returnPaid
  );

  event DealUnpaused(address indexed deal);
  event EmergencyShutdown(address indexed deal);
}
