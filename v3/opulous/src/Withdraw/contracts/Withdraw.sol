// SPDX-License-Identifier: Apache2.0
pragma solidity 0.8.19;

import '@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol';
import '@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/utils/cryptography/EIP712Upgradeable.sol';
import '@openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol';
import './Library/FIFOQueue.sol';
import './OLOAN.sol';
import './Library/Checkpoints.sol';
import 'hardhat/console.sol';

interface IStaking {
  function withdrawFunds(uint256 amount) external returns (uint256, uint256);
}

contract Withdraw is
  Initializable,
  AccessControlEnumerableUpgradeable,
  ReentrancyGuardUpgradeable,
  EIP712Upgradeable,
  UUPSUpgradeable
{
  struct WithdrawData {
    uint256 value;
    uint256 nonce;
    uint256 deadLine;
    address receiver;
    address signer;
  }
  using FIFOQueue for FIFOQueue.WithdrawDeque;
  using Checkpoints for Checkpoints.ProcessWithdrawTracer;
  using Checkpoints for StructuredLinkedList.List;
  bytes32 public constant OPERATION_WALLET = keccak256('OPERATION_WALLET');
  FIFOQueue.WithdrawDeque private _queue;
  IERC20Upgradeable public usdcToken;
  OLOAN public lpToken;
  IStaking public stakingContract;
  mapping(address => uint256[]) public userRequestsIDs;
  uint256 public TotalQueuedAddresses;
  uint256 QueuedTokens;
  bool public activeWithdraw;
  uint256 public MinWithdrawAmount;
  uint256 accumulatedLPAmountRequested;
  uint256 accumulatedLPAmountCancelled;
  Checkpoints.ProcessWithdrawTracer rateHistory;
  StructuredLinkedList.List cancelHistory;
  uint256 public LastProcessedID;
  uint256 public LastProcessedExchange;
  bool public processing;
  uint256 leftOverLPAmount;
  uint256 lastUSDCReceived;
  uint256 lastRate;
  // errors
  error NotAuthorized();
  error WithdrawNotActive();
  error InvalidMinAmount();
  error ZeroAddress();
  error AlreadyProcessed();
  error OutOfBounds();
  error InvalidUser();
  error AlreadyAdmin();
  error InvalidLength();
  error InvalidAmount();
  error InsufficientQueuedTokens();
  error InsufficientBalance();
  error NonceAlreadyUsed();
  error Expired();
  error InvalidReceiver();
  error InvalidSignature();
  error NoClaimableAmount();

  /** @notice mapping for used nonces */
  mapping(uint256 => bool) public usedNonces;
  modifier onlyAdmin() {
    if (!hasRole(DEFAULT_ADMIN_ROLE, msg.sender)) {
      revert NotAuthorized();
    }
    _;
  }
  modifier onlyOperationWallet() {
    if (!hasRole(OPERATION_WALLET, msg.sender) && !hasRole(DEFAULT_ADMIN_ROLE, msg.sender)) {
      revert NotAuthorized();
    }
    _;
  }
  modifier whenNotPaused() {
    if (!activeWithdraw) {
      revert WithdrawNotActive();
    }
    _;
  }

  event SetStakingContractEvent(address newStakingContract);
  event SetOperationWalletEvent(address[] newOperationWallet, bool[] authorized);
  event SetMinWithdrawAmountEvent(uint256 amount);
  event ToggleWithdrawEvent(bool activate);
  event EnterQueueEvent(bytes signature, WithdrawData Data, uint256 ID);
  event ExitQueueEvent(address userWallet, uint256 ID);
  event ClaimAllEvent(uint256 USDCReceived, uint256 LPAmount, address userWallet);
  event NonceUsed(uint256 nonce);

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }

  function initialize(
    address _usdcTokenAddress,
    address _lpTokenAddress,
    address _stakingContract
  ) public initializer {
    if (_usdcTokenAddress == address(0)) {
      revert ZeroAddress();
    }
    if (_lpTokenAddress == address(0)) {
      revert ZeroAddress();
    }
    __AccessControlEnumerable_init();
    __ReentrancyGuard_init();
    __UUPSUpgradeable_init();
    __EIP712_init_unchained('OPULOUS', '1');

    usdcToken = IERC20Upgradeable(_usdcTokenAddress);
    lpToken = OLOAN(_lpTokenAddress);
    _queue.initialize();
    activeWithdraw = true;
    _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    SetStakingContract(_stakingContract);
  }

  /**
   * @dev Adds a new withdraw request to the queue.
   * @param signature The signature of the user.
   * @param Data The signed data of the user request.
   * @notice The `value` of the request must be greater than or equal to the `MinWithdrawAmount`.
   */
  function enterQueue(
    bytes memory signature,
    WithdrawData calldata Data
  ) public nonReentrant whenNotPaused {
    uint256 LPAmount = Data.value;
    if (LPAmount < MinWithdrawAmount) {
      revert InvalidMinAmount();
    }
    verifySignature(signature, Data);
    safeTransferFrom(address(lpToken), msg.sender, address(this), LPAmount);
    accumulatedLPAmountRequested += LPAmount;
    uint256 ID = _queue.addToQueue(LPAmount, accumulatedLPAmountRequested);
    userRequestsIDs[msg.sender].push(ID);
    if (userRequestsIDs[msg.sender].length == 1) {
      TotalQueuedAddresses++;
    }
    QueuedTokens += LPAmount;
    emit EnterQueueEvent(signature, Data, ID);
  }

  /**
   * @dev Removes a withdraw request from the queue.
   * @param signature The signature of the user.
   * @param Data The signed data of the user request.
   * @notice The `value` of the request must be less than the length of the user requests array.
   */
  function exitQueue(
    bytes memory signature,
    WithdrawData calldata Data
  ) public nonReentrant whenNotPaused {
    if (Data.value < LastProcessedID) {
      revert AlreadyProcessed();
    }
    verifySignature(signature, Data);

    uint256 userRequestsLength = userRequestsIDs[msg.sender].length;
    uint256 index = userRequestsLength;
    for (uint256 i = 0; i < userRequestsLength; i++) {
      if (userRequestsIDs[msg.sender][i] == Data.value) {
        index = i;
        break;
      }
    }
    if (index >= userRequestsLength) {
      revert OutOfBounds();
    }
    FIFOQueue.WithdrawItem storage item = _queue.get(Data.value);
    uint256 exchangesLength = item.exchanges.length;
    if (item.ID == LastProcessedID && item.exchanges[exchangesLength - 1].processed) {
      revert AlreadyProcessed();
    }
    if (item.userWallet != msg.sender) {
      revert InvalidUser();
    }
    (uint256 LPAmount, bool doNotDelete) = _queue.removeFromQueue(Data.value);
    if (!doNotDelete) {
      userRequestsIDs[msg.sender][index] = userRequestsIDs[msg.sender][
        userRequestsIDs[msg.sender].length - 1
      ];
      userRequestsIDs[msg.sender].pop();
    }
    if (userRequestsIDs[msg.sender].length == 0) {
      TotalQueuedAddresses--;
    }
    safeTransfer(address(lpToken), msg.sender, LPAmount);

    cancelHistory.push(
      Data.value,
      StructuredLinkedList.CancelWithdrawCheckPointData({ CanceledAmount: LPAmount })
    );
    QueuedTokens -= LPAmount;
    emit ExitQueueEvent(msg.sender, Data.value);
  }

  /**
   * @dev Claims all the available USDC for the user.
   * @param signature The signature of the user.
   * @param Data The signed data of the user request.
   * @notice The `value` of the request can be set to 0 to claim all the available USDC.
   */
  function claimAll(
    bytes memory signature,
    WithdrawData calldata Data
  ) public whenNotPaused nonReentrant {
    verifySignature(signature, Data);
    uint256[] storage userClaimRequests = userRequestsIDs[msg.sender];
    uint256 TotalUSDC;
    uint256 totalLPAmount;
    bool deleted = false;
    for (
      uint256 i = 0;
      i <
      (
        userClaimRequests.length < Data.value || Data.value == 0
          ? userClaimRequests.length
          : Data.value
      );
      i = deleted ? i : i + 1
    ) {
      deleted = false;
      FIFOQueue.WithdrawItem storage item = _queue.get(userClaimRequests[i]);
      if (item.ID > LastProcessedID) continue;
      if (item.ID < LastProcessedID && item.exchanges.length > 0) {
        for (uint256 j = 0; j < item.exchanges.length; j++) {
          TotalUSDC +=
            (item.exchanges[j].LPAmount *
              (
                item.exchanges[j].Rate > 0
                  ? item.exchanges[j].Rate
                  : rateHistory.upperLookup(item.ID, j).Rate
              )) /
            10 ** 18;
          totalLPAmount += item.exchanges[j].LPAmount;
        }
        userClaimRequests[i] = userClaimRequests[userClaimRequests.length - 1];
        userClaimRequests.pop();
        deleted = true;
      } else if (item.ID == LastProcessedID && item.exchanges.length > 0) {
        uint256 notProcessedItems = 0;
        for (uint256 j = 0; j < item.exchanges.length; j++) {
          if (!item.exchanges[j].processed && item.exchanges[j].LPAmount != 0) {
            notProcessedItems++;
            continue;
          }
          TotalUSDC += calculateUSDC(
            item.exchanges[j].LPAmount,
            item.exchanges[j].Rate,
            item.ID,
            j
          );
          totalLPAmount += item.exchanges[j].LPAmount;
          item.exchanges[j].LPAmount = 0;
        }
        if (notProcessedItems == 0) {
          userClaimRequests[i] = userClaimRequests[userClaimRequests.length - 1];
          userClaimRequests.pop();
          deleted = true;
        }
      }
    }
    if (TotalUSDC == 0) {
      revert NoClaimableAmount();
    }
    if (userRequestsIDs[msg.sender].length == 0) {
      TotalQueuedAddresses--;
    }
    safeTransfer(address(usdcToken), msg.sender, TotalUSDC);
    emit ClaimAllEvent(TotalUSDC, totalLPAmount, msg.sender);
  }

  // only admin

  /**
   * @dev Transfers the admin role to a new address.
   * @param newAdmin The new admin address.
   */
  function transferAdminRole(address newAdmin) public onlyAdmin {
    if (newAdmin == address(0)) {
      revert ZeroAddress();
    }
    if (newAdmin == msg.sender) {
      revert AlreadyAdmin();
    }
    grantRole(DEFAULT_ADMIN_ROLE, newAdmin);
    revokeRole(DEFAULT_ADMIN_ROLE, msg.sender);
  }

  /**
   * @dev Sets the operation wallet addresses.
   * @param newOperationWallet The new operation wallet addresses.
   * @param authorized The authorization status of the operation wallet addresses.
   */
  function SetOperationWallet(
    address[] calldata newOperationWallet,
    bool[] calldata authorized
  ) public onlyAdmin {
    if (newOperationWallet.length != authorized.length) {
      revert InvalidLength();
    }
    for (uint256 i = 0; i < newOperationWallet.length; i++) {
      if (authorized[i]) {
        grantRole(OPERATION_WALLET, newOperationWallet[i]);
      } else {
        revokeRole(OPERATION_WALLET, newOperationWallet[i]);
      }
    }
    emit SetOperationWalletEvent(newOperationWallet, authorized);
  }

  /**
   * @dev Sets the staking contract address.
   * @param newStakingContract The new staking contract address.
   */
  function SetStakingContract(address newStakingContract) public onlyAdmin {
    if (newStakingContract == address(0)) {
      revert ZeroAddress();
    }
    if (address(stakingContract) != address(0)) {
      lpToken.approve(address(stakingContract), 0);
    }
    lpToken.approve(address(newStakingContract), type(uint256).max);
    stakingContract = IStaking(newStakingContract);
    emit SetStakingContractEvent(newStakingContract);
  }

  /**
   * @dev Processes the queue.
   * @param LPAmount The amount of LP tokens to be processed.
   */
  function ProcessQueue(uint256 LPAmount, uint256 maxIterations) public onlyOperationWallet {
    if (!processing) {
      if (LPAmount == 0) {
        revert InvalidAmount();
      }
      if (QueuedTokens < LPAmount) {
        revert InsufficientQueuedTokens();
      }
      (lastUSDCReceived, lastRate) = stakingContract.withdrawFunds(LPAmount);
      processing = true;
      _processQueue(LPAmount, lastRate, maxIterations);
    } else {
      // continue previous processing if canceledAmount > 0
      if (leftOverLPAmount > 0) _processQueue(leftOverLPAmount, lastRate, maxIterations);
      else {
        processing = false;
      }
    }

    if (!processing) {
      rateHistory.push(
        LastProcessedID,
        LastProcessedExchange,
        Checkpoints.ProcessWithdrawCheckPointData({ Rate: lastRate })
      );
      QueuedTokens -= LPAmount;
    }
  }

  /**
   * @dev Toggles the withdraw status.
   * @param activate The new withdraw status.
   */
  function toggleWithdraw(bool activate) public onlyOperationWallet {
    activeWithdraw = activate;
    emit ToggleWithdrawEvent(activate);
  }

  /**
   * @dev Sets the minimum withdraw amount.
   * @param amount The new minimum withdraw amount.
   */
  function setMinWithdrawAmount(uint256 amount) public onlyOperationWallet {
    MinWithdrawAmount = amount;
    emit SetMinWithdrawAmountEvent(amount);
  }

  // view functions

  /**
   * @dev Returns the total queued LP tokens.
   * @return The total queued LP tokens.
   */
  function totalQueuedLP() public view returns (uint256) {
    return QueuedTokens;
  }

  /**
   * @dev Returns all the withdraw requests for the given user.
   * @param userWallet The user wallet address.
   * @return The withdraw requests.
   */
  function getAllUserWithdrawRequests(
    address userWallet
  ) public view returns (FIFOQueue.WithdrawItem[] memory) {
    uint256[] storage userRequests = userRequestsIDs[userWallet];
    uint256 requestsLength;
    for (uint256 i = 0; i < userRequests.length; i++) {
      FIFOQueue.WithdrawItem storage item = _queue.get(userRequests[i]);
      if (
        (item.ID > LastProcessedID ||
          (item.ID == LastProcessedID &&
            !item.exchanges[item.exchanges.length - 1].processed &&
            item.exchanges[item.exchanges.length - 1].LPAmount != 0)) && item.exchanges.length > 0
      ) {
        requestsLength++;
      }
    }

    FIFOQueue.WithdrawItem[] memory requests = new FIFOQueue.WithdrawItem[](requestsLength);
    uint256 counter = 0;
    for (uint256 i = 0; i < userRequests.length; i++) {
      FIFOQueue.WithdrawItem storage item = _queue.get(userRequests[i]);
      if (
        (item.ID > LastProcessedID ||
          (item.ID == LastProcessedID &&
            !item.exchanges[item.exchanges.length - 1].processed &&
            item.exchanges[item.exchanges.length - 1].LPAmount != 0)) && item.exchanges.length > 0
      ) {
        requests[counter] = item;
        counter++;
      }
    }
    return requests;
  }

  /**
   * @dev Returns the total amount to claim of usdc and LP tokens for the given user.
   * @param iterations The number of iterations to be processed.
   * @param user The user wallet address.
   * @return TotalUSDC The total amount of USDC to be claimed.
   * @return totalLPAmount The total amount of LP tokens used to claim the USDC.
   */
  function totalClaimAmount(
    uint256 iterations,
    address user
  ) public view returns (uint256 TotalUSDC, uint256 totalLPAmount) {
    uint256[] storage userClaimRequests = userRequestsIDs[user];
    iterations = userClaimRequests.length < iterations || iterations == 0
      ? userClaimRequests.length
      : iterations;
    for (uint256 i = 0; i < iterations; i++) {
      FIFOQueue.WithdrawItem storage item = _queue.get(userClaimRequests[i]);
      if (item.ID > LastProcessedID) continue;
      for (uint256 j = 0; j < item.exchanges.length; j++) {
        if (
          item.ID < LastProcessedID || (item.ID == LastProcessedID && item.exchanges[j].processed)
        ) {
          TotalUSDC += calculateUSDC(
            item.exchanges[j].LPAmount,
            item.exchanges[j].Rate,
            item.ID,
            j
          );
          totalLPAmount += item.exchanges[j].LPAmount;
        }
      }
    }
  }

  function calculateUSDC(
    uint256 LPAmount,
    uint256 rate,
    uint256 itemID,
    uint256 exchangeIndex
  ) internal view returns (uint256) {
    if (rate > 0) {
      return (LPAmount * rate) / 10 ** 18;
    } else {
      return (LPAmount * rateHistory.upperLookup(itemID, exchangeIndex).Rate) / 10 ** 18;
    }
  }

  /**
   * @dev Returns all the operation wallet addresses.
   * @return The operation wallet addresses.
   */
  function getAllOperationWallets() public view returns (address[] memory) {
    uint256 length = getRoleMemberCount(OPERATION_WALLET);
    address[] memory wallets = new address[](length);
    for (uint256 i = 0; i < length; i++) {
      wallets[i] = getRoleMember(OPERATION_WALLET, i);
    }
    return wallets;
  }

  // internal functions

  /**
   * @dev Processes the queue.
   * @param LPAmount The amount of LP tokens to be processed.
   * @param maxIterations The maximum number of recursive iterations.
   */
  function _processQueue(uint256 LPAmount, uint256 Rate, uint256 maxIterations) internal {
    FIFOQueue.WithdrawItem storage firstItem = _queue.at(_queue.QueueBegin);
    uint256 firstCanceled = cancelHistory.get(firstItem.ID).CanceledAmount;
    if (firstCanceled > 0 || firstItem.exchanges[firstItem.exchanges.length - 1].processed) {
      _queue.moveBeginningOfQueue(firstItem.ID + 1);
      LastProcessedID = firstItem.ID + 1;
      if (maxIterations == 0) return;
      maxIterations--;
      _processQueue(LPAmount, Rate, maxIterations);
      return;
    }
    uint256 alreadyProcessed = firstItem.accumulatedLPAmount;
    // remove non processed requests from alreadyProcessed
    for (uint256 i = 0; i < firstItem.exchanges.length; i++) {
      alreadyProcessed -= !firstItem.exchanges[i].processed ? firstItem.exchanges[i].LPAmount : 0;
    }

    uint256 target = LPAmount + alreadyProcessed;
    uint256 LastID = _queue.findLastCoveringItem(target);
    uint256 canceledAmount = cancelHistory.accumulateValue(firstItem.ID, LastID - 1);
    uint256 itemCancelAmount = cancelHistory.get(LastID).CanceledAmount;
    FIFOQueue.WithdrawItem storage lastItem = _queue.get(LastID);

    (leftOverLPAmount, LastProcessedExchange) = _queue.updateItem(
      LastID,
      itemCancelAmount > 0
        ? target + itemCancelAmount - lastItem.accumulatedLPAmount
        : lastItem.accumulatedLPAmount - target,
      Rate
    );
    leftOverLPAmount += canceledAmount;
    _queue.moveBeginningOfQueue(LastID);
    LastProcessedID = LastID;
    if (maxIterations == 0) return;
    if (leftOverLPAmount > 0) {
      maxIterations--;
      _processQueue(leftOverLPAmount, Rate, maxIterations);
    } else {
      processing = false;
    }
  }

  /**
   * @dev Safely transfers the given amount of tokens.
   * @param token The token address.
   * @param to The recipient address.
   * @param amount The amount of tokens to be transferred.
   */
  function safeTransfer(address token, address to, uint256 amount) internal {
    if (IERC20Upgradeable(token).balanceOf(address(this)) < amount) {
      revert InsufficientBalance();
    }
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
    if (IERC20Upgradeable(token).balanceOf(from) < amount) {
      revert InsufficientBalance();
    }
    SafeERC20Upgradeable.safeTransferFrom(IERC20Upgradeable(token), from, to, amount);
  }

  /**
   * @dev Verifies the signature of the given data.
   * @param signature The signature of the user.
   * @param Data The signed data of the user request.
   */
  function verifySignature(bytes memory signature, WithdrawData memory Data) internal {
    if (usedNonces[Data.nonce]) {
      revert NonceAlreadyUsed();
    }
    if (block.timestamp > Data.deadLine) {
      revert Expired();
    }
    if (Data.receiver != msg.sender) {
      revert InvalidReceiver();
    }
    _checkRole(OPERATION_WALLET, Data.signer);

    bytes32 digest = _hashTypedDataV4(
      keccak256(
        abi.encode(
          keccak256(
            'WithdrawData(uint256 value,uint256 nonce,uint256 deadLine,address receiver,address signer)'
          ),
          Data.value,
          Data.nonce,
          Data.deadLine,
          Data.receiver,
          Data.signer
        )
      )
    );
    address signer = ECDSAUpgradeable.recover(digest, signature);
    if (Data.signer != signer) {
      revert InvalidSignature();
    }
    usedNonces[Data.nonce] = true;
    emit NonceUsed(Data.nonce);
  }

  function _authorizeUpgrade(address newImplementation) internal override onlyAdmin {}
}
