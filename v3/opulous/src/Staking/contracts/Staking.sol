// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import '@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/utils/cryptography/EIP712Upgradeable.sol';
import './OLOAN.sol';
import './Escrow.sol';

contract Staking is
  Initializable,
  AccessControlEnumerableUpgradeable,
  ReentrancyGuardUpgradeable,
  EIP712Upgradeable,
  UUPSUpgradeable
{
  struct StakeData {
    uint256 amount;
    uint256 nonce;
    uint256 deadLine;
    address receiver;
    address signer;
  }

  bytes32 public constant OPERATION_WALLET = keccak256('OPERATION_WALLET');
  address public WITHDRAW_CONTRACT;
  address public DittoAddress;
  IERC20Upgradeable public usdcToken;
  OLOAN public LPToken;
  uint256 currentRoundCap;
  uint256 public minStake;
  uint256 public StakeIncrement;
  uint256 currentRoundStakes;
  bool activeStakes;
  uint256 public StakeReceived;
  uint256 public totalInterest;
  uint256 public totalWithdrawn;
  uint256 public LPSupply;
  uint256 public exchangeRate;
  address public escrowAddress;

  /** @notice mapping for used nonces */
  mapping(uint256 => bool) public usedNonces;

  event Staked(address indexed user, uint256 usdcAmount, uint256 LPAmount);
  event NonceUsed(uint256 nonce);

  modifier onlyAdmin() {
    require(hasRole(DEFAULT_ADMIN_ROLE, msg.sender), 'Caller is not an admin');
    _;
  }
  modifier onlyOperationWallet() {
    require(
      hasRole(OPERATION_WALLET, msg.sender) || hasRole(DEFAULT_ADMIN_ROLE, msg.sender),
      'Caller is not an operation wallet'
    );
    _;
  }

  modifier onlyWithdrawContract() {
    require(WITHDRAW_CONTRACT == msg.sender, 'Caller is not a withdraw contract');
    _;
  }

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }

  function initialize(
    address _usdcTokenAddress,
    address _lpTokenAddress,
    address _escrowAddress
  ) public initializer {
    require(_usdcTokenAddress != address(0), 'USDC token address cannot be zero address');
    require(_lpTokenAddress != address(0), 'LP token address cannot be zero address');
    require(_escrowAddress != address(0), 'Escrow address cannot be zero address');
    __AccessControlEnumerable_init();
    __ReentrancyGuard_init();
    __UUPSUpgradeable_init();
    __EIP712_init_unchained('OPULOUS', '1');

    usdcToken = IERC20Upgradeable(_usdcTokenAddress);
    LPToken = OLOAN(_lpTokenAddress);
    exchangeRate = 10 ** 18;
    _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    escrowAddress = _escrowAddress;
  }

  // user Functions

  /**
   * @dev Stake USDC tokens to receive LP tokens
   * @param signature The signature of the stake data
   * @param Data The stake data
   */
  function StakeUSDC(bytes memory signature, StakeData calldata Data) public nonReentrant {
    require(activeStakes, 'Stakes are not active');
    require(currentRoundStakes + Data.amount <= currentRoundCap, 'Cap exceeded');
    require(Data.amount >= minStake, 'Amount must be greater than minStake');
    require(Data.amount % StakeIncrement == 0, 'Amount must be a multiple of StakeIncrement');

    verifySignature(signature, Data);

    uint256 lpAmount = usdcToLP(Data.amount);
    Escrow(payable(escrowAddress)).mintTo(msg.sender, lpAmount);

    StakeReceived += Data.amount;
    LPSupply += lpAmount;
    currentRoundStakes += Data.amount;
    safeTransferFrom(address(usdcToken), msg.sender, address(this), Data.amount);
    emit Staked(msg.sender, Data.amount, lpAmount);
  }

  // Admin Functions

  /**
   * @dev Transfer admin role to a new address
   * @param newAdmin The new admin address
   */
  function transferAdminRole(address newAdmin) public onlyAdmin {
    require(newAdmin != address(0), 'New admin cannot be zero address');
    require(newAdmin != msg.sender, 'New admin cannot be caller');
    _grantRole(DEFAULT_ADMIN_ROLE, newAdmin);
    _revokeRole(DEFAULT_ADMIN_ROLE, msg.sender);
  }

  /**
   * @dev Set operation wallets
   * @param newOperationWallet The new operation wallets
   * @param authorized The authorization status of the wallets
   */
  function SetOperationWallet(
    address[] calldata newOperationWallet,
    bool[] calldata authorized
  ) public onlyAdmin {
    require(newOperationWallet.length == authorized.length, 'Arrays must be the same length');
    for (uint256 i = 0; i < newOperationWallet.length; i++) {
      if (authorized[i]) {
        _grantRole(OPERATION_WALLET, newOperationWallet[i]);
      } else {
        _revokeRole(OPERATION_WALLET, newOperationWallet[i]);
      }
    }
  }

  /**
   * @dev Set withdraw contract address
   * @param newWithdrawContract The new withdraw contract address
   */
  function SetWithdrawContract(address newWithdrawContract) public onlyAdmin {
    require(newWithdrawContract != address(0), 'Withdraw contract cannot be zero address');
    WITHDRAW_CONTRACT = newWithdrawContract;
  }

  /**
   * @dev Set Ditto address
   * @param newDittoAddress The new Ditto address
   */
  function SetDittoAddress(address newDittoAddress) public onlyAdmin {
    require(newDittoAddress != address(0), 'Ditto address cannot be zero address');
    DittoAddress = newDittoAddress;
  }

  /**
   * @dev Receive repayment
   * @param principalAmount The principal amount
   * @param interestAmount The interest amount
   */
  function receiveRepayment(uint256 principalAmount, uint256 interestAmount) public onlyAdmin {
    require(principalAmount <= totalUSDC() - currentUSDC(), 'principalAmount exceeds Debt Balance');
    totalInterest += interestAmount;
    exchangeRate = currentRate();
    safeTransferFrom(
      address(usdcToken),
      msg.sender,
      address(this),
      principalAmount + interestAmount
    );
  }

  // Operation Wallet Functions

  /**
   * @dev Start a new round
   * @param roundCap The round cap
   * @param _minStake The minimum stake
   * @param _StakeIncrement The stake increment
   */
  function startNewRound(
    uint256 roundCap,
    uint256 _minStake,
    uint256 _StakeIncrement
  ) public onlyOperationWallet {
    require(roundCap > 0, 'Round cap must be greater than zero');
    require(_minStake > 0, 'Min Stake must be greater than zero');
    require(_StakeIncrement > 0, 'Stake increment must be greater than zero');
    require(_minStake % _StakeIncrement == 0, 'Min Stake must be a multiple of StakeIncrement');
    currentRoundCap = roundCap;
    minStake = _minStake;
    StakeIncrement = _StakeIncrement;
    currentRoundStakes = 0;
    activeStakes = true;
  }

  /**
   * @dev Edit round
   * @param roundCap The round cap
   * @param _minStake The minimum stake
   * @param _StakeIncrement The stake increment
   */
  function editRound(
    uint256 roundCap,
    uint256 _minStake,
    uint256 _StakeIncrement
  ) public onlyOperationWallet {
    require(roundCap > currentRoundStakes, 'Round cap must be greater than current Stakes');
    require(_minStake > 0, 'Min Stake must be greater than zero');
    require(_StakeIncrement > 0, 'Stake increment must be greater than zero');
    require(_minStake % _StakeIncrement == 0, 'Min Stake must be a multiple of StakeIncrement');
    currentRoundCap = roundCap;
    minStake = _minStake;
    StakeIncrement = _StakeIncrement;
  }

  /**
   * @dev Toggle stakes
   * @param activate The activation status
   */
  function toggleStake(bool activate) public onlyOperationWallet {
    activeStakes = activate;
  }

  /**
   * @dev Send funds to Ditto
   * @param amount The amount to send
   */
  function SendFundsToDitto(uint256 amount) public onlyOperationWallet {
    require(amount <= currentUSDC(), 'Amount exceeds current USDC balance');
    safeTransfer(address(usdcToken), DittoAddress, amount);
  }

  // Withdraw Contract Functions

  /**
   * @dev Withdraw funds
   * @param LPAmount The amount of LP tokens to withdraw
   * @return usdcAmount The amount of USDC tokens to withdraw
   * @return rate The exchange rate
   */
  function withdrawFunds(
    uint256 LPAmount
  ) public nonReentrant onlyWithdrawContract returns (uint256 usdcAmount, uint256 rate) {
    require(LPAmount > 0, 'LP Amount must be greater than zero');
    require(LPAmount <= LPSupply, 'Amount exceeds LP supply');

    usdcAmount = LPToUsdc(LPAmount);
    require(usdcAmount <= currentUSDC(), 'Amount exceeds current USDC balance');
    totalWithdrawn += usdcAmount;
    LPSupply -= LPAmount;
    rate = exchangeRate;
    safeTransferFrom(address(LPToken), msg.sender, escrowAddress, LPAmount);
    safeTransfer(address(usdcToken), msg.sender, usdcAmount);
  }

  // View Functions

  /**
   * @dev Get total USDC
   * @return totalUSDC The total USDC
   */
  function totalUSDC() public view returns (uint256) {
    return StakeReceived + totalInterest - totalWithdrawn;
  }

  /**
   * @dev Get current USDC
   * @return currentUSDC The current USDC
   */
  function currentUSDC() public view returns (uint256) {
    return IERC20Upgradeable(usdcToken).balanceOf(address(this));
  }

  /**
   * @dev Get current rate
   * @return currentRate The current rate
   */
  function currentRate() public view returns (uint256) {
    return LPSupply > 0 ? (totalUSDC() * 10 ** 18) / LPSupply : 10 ** 18;
  }

  /**
   * @dev Convert USDC to LP
   * @param usdcAmount The amount of USDC tokens
   * @return LPAmount The amount of LP tokens
   */
  function usdcToLP(uint256 usdcAmount) public view returns (uint256) {
    return (usdcAmount * 10 ** 18) / exchangeRate;
  }

  /**
   * @dev Convert LP to USDC
   * @param LPNAmount The amount of LP tokens
   * @return usdcAmount The amount of USDC tokens
   */
  function LPToUsdc(uint256 LPNAmount) public view returns (uint256) {
    return (LPNAmount * exchangeRate) / 10 ** 18;
  }

  /**
   * @dev Get round details
   * @return currentRoundCap The current round cap
   * @return currentRoundStakes The current round stakes
   * @return activeStakes The active stakes status
   * @return minStake The minimum stake
   * @return StakeIncrement The stake increment
   */
  function roundDetails() public view returns (uint256, uint256, bool, uint256, uint256) {
    return (currentRoundCap, currentRoundStakes, activeStakes, minStake, StakeIncrement);
  }

  /**
   * @dev Get all operation wallets
   * @return wallets The operation wallets
   */
  function getAllOperationWallets() public view returns (address[] memory) {
    uint256 length = getRoleMemberCount(OPERATION_WALLET);
    address[] memory wallets = new address[](length);
    for (uint256 i = 0; i < length; i++) {
      wallets[i] = getRoleMember(OPERATION_WALLET, i);
    }
    return wallets;
  }

  // Internal Functions

  /**
   * @dev Safely transfers the given amount of tokens.
   * @param token The token address.
   * @param to The recipient address.
   * @param amount The amount of tokens to be transferred.
   */
  function safeTransfer(address token, address to, uint256 amount) internal {
    require(IERC20Upgradeable(token).balanceOf(address(this)) >= amount, 'Insufficient balance');
    SafeERC20Upgradeable.safeTransfer(IERC20Upgradeable(token), to, amount);
  }

  /**
   * @dev Safely transfers the given amount of tokens from the given address.
   * @param token The token address.
   * @param from The sender address.
   * @param to The recipient address.
   * @param amount The amount of tokens to be transferred.
   */
  function safeTransferFrom(address token, address from, address to, uint256 amount) internal {
    require(IERC20Upgradeable(token).balanceOf(from) >= amount, 'Insufficient balance');
    SafeERC20Upgradeable.safeTransferFrom(IERC20Upgradeable(token), from, to, amount);
  }

  /**
   * @dev Verifies the signature of the given data.
   * @param signature The signature of the user.
   * @param Data The signed data of the user request.
   */
  function verifySignature(bytes memory signature, StakeData memory Data) internal {
    require(!usedNonces[Data.nonce], 'signature already executed');
    require(block.timestamp <= Data.deadLine, 'signature expired');
    require(Data.receiver == msg.sender, 'User must be msg.sender');
    _checkRole(OPERATION_WALLET, Data.signer);

    bytes32 digest = _hashTypedDataV4(
      keccak256(
        abi.encode(
          keccak256(
            'StakeData(address receiver,uint256 amount,uint256 nonce,uint256 deadLine,address signer)'
          ),
          Data.receiver,
          Data.amount,
          Data.nonce,
          Data.deadLine,
          Data.signer
        )
      )
    );
    address signer = ECDSAUpgradeable.recover(digest, signature);

    require(Data.signer == signer, 'Invalid signature');
    usedNonces[Data.nonce] = true;
    emit NonceUsed(Data.nonce);
  }

  function _authorizeUpgrade(address newImplementation) internal override onlyAdmin {}
}
