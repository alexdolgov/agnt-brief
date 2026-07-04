// SPDX-License-Identifier: Apache2.0
pragma solidity ^0.8.18;
import '@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol';
import '@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/utils/cryptography/EIP712Upgradeable.sol';
import '@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol';
import '@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol';
import '@openzeppelin/contracts-upgradeable/utils/cryptography/MerkleProofUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol';
import './interfaces/ILottery.sol';
import 'hardhat/console.sol';

interface MintBurnToken {
  function mint(address to, uint256 amount) external;

  function burnFrom(address account, uint256 amount) external;

  function balanceOf(address account) external view returns (uint256);

  function decimals() external view returns (uint8);
}

contract LotteryInteractions is
  Initializable,
  AccessControlUpgradeable,
  UUPSUpgradeable,
  EIP712Upgradeable,
  ReentrancyGuardUpgradeable
{
  struct Payment {
    uint256 amount;
    address tokenAddress;
    uint256 decimals;
  }
  struct PaymentData {
    Payment payment;
    address PayingUser;
    address LotteryAddress;
    uint256 chainID;
    uint256 ticketsNumber;
    address signer;
    uint256 nonce;
    uint256 deadline;
    bool isPresale;
  }
  struct ClaimRefundsInputs {
    address LotteryAddress;
    uint256 chainID;
    address user;
    uint256 balance;
    uint256 paymentAmount;
    address paymentTokenAddress;
    uint256 paymentDecimals;
    bytes32[] proof;
    address signer;
    uint256 nonce;
    uint256 deadline;
  }
  bytes32 public constant OPERATION_ROLE = keccak256('OPERATION_ROLE');
  using SafeERC20Upgradeable for ERC20Upgradeable;

  error InvalidSignature();
  error NotEnoughBalance();
  error ZeroAddress();
  error NothingToClaim();
  error InvalidAmounts();
  error invalidMerkleRoot();
  error MerkleRootAlreadySet();
  error TokenNotAcceptable();
  // Mapping to keep track of acceptable stableCoins
  mapping(address => bool) private acceptableStableCoins;
  // mapping for used nonces
  mapping(uint256 => bool) public usedNonces;
  // Mapping from owner => chainID => LotteryAddress => Owner Position in the Lottery
  mapping(address => mapping(uint256 => mapping(address => Payment[]))) internal _userPayment;
  mapping(address => mapping(uint256 => mapping(address => uint256))) internal _userTickets;
  mapping(address => mapping(uint256 => Payment[])) internal LotteryPayment;
  mapping(address => mapping(uint256 => Payment[])) internal RaisedFunds;
  // a mapping to get users claimed funds
  MintBurnToken public TicketsContract;
  mapping(uint256 => mapping(address => bytes32)) public _claimMerkleRoot;

  // Event emitted when a stablecoin is added
  event StablecoinAdded(address indexed stablecoin);

  // Event emitted when a stablecoin is removed
  event StablecoinRemoved(address indexed stablecoin);
  event NonceUsed(uint256 indexed nonce);
  event EmitVAA(address indexed LotteryAddress, uint256 indexed chainID, uint64 sequence);
  address public Treasury;

  mapping(address => mapping(uint256 => mapping(address => bool))) public userClaimed;

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }

  function initialize(address _ticketAddress, address _treasury) public initializer {
    if (_ticketAddress == address(0)) revert ZeroAddress();
    if (_treasury == address(0)) revert ZeroAddress();
    __AccessControl_init();
    __UUPSUpgradeable_init();
    __EIP712_init_unchained('OPULOUS', '1');
    _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    _grantRole(OPERATION_ROLE, msg.sender);
    __ReentrancyGuard_init();

    TicketsContract = MintBurnToken(_ticketAddress);
    Treasury = _treasury;
  }

  /**
   * @dev userEnterAllocation function is used to burn the user tickets and then transfer the user's ERC20 payment to the contract
   * @param signature the signature of the user that is used to verify that the user is the one who signed the message
   * @param Data the data that is sent by the user
   */
  function userEnterAllocation(
    bytes calldata signature,
    PaymentData calldata Data
  ) public nonReentrant {  
    if (usedNonces[Data.nonce]) revert InvalidSignature();
    if (block.timestamp > Data.deadline) revert InvalidSignature();
    if (!Data.isPresale) revert InvalidSignature();

    // Prevent entering diff token
    (uint256 amount, address tokenAddress, , ) = getUserPayment(
      Data.PayingUser,
      Data.LotteryAddress,
      Data.chainID
    );
    if (amount > 0 && tokenAddress != Data.payment.tokenAddress) revert TokenNotAcceptable();

    if (!isStableCoinAccepted(Data.payment.tokenAddress)) revert TokenNotAcceptable();
    if (Data.ticketsNumber % 10 ** TicketsContract.decimals() != 0)
      revert InvalidAmounts();
    verifyPaymentDataSigner(Data, signature);
    updateTickets(Data.PayingUser, Data.chainID, Data.LotteryAddress, Data.ticketsNumber);
    safeTransferFrom(
      Data.payment.tokenAddress,
      Data.PayingUser,
      address(this),
      Data.payment.amount
    );

    addERC20ToState(_userPayment[Data.PayingUser][Data.chainID][Data.LotteryAddress], Data.payment);
    addERC20ToState(LotteryPayment[Data.LotteryAddress][Data.chainID], Data.payment);
    ILottery(Data.LotteryAddress).userEnterAllocation(
      ILottery.PaymentData(
        Data.PayingUser,
        block.chainid,
        Data.ticketsNumber / 10 ** TicketsContract.decimals(),
        Data.payment.amount,
        Data.payment.decimals,
        true
      )
    );
  }
  /**
   * @dev userRemovesAllocation function is used to transfer back the user's ERC20 payment and mint the user tickets back
   * @param signature the signature of the user that is used to verify that the user is the one who signed the message
   * @param Data the data that is sent by the user
   */
  function userRemovesAllocation(
    bytes calldata signature,
    PaymentData calldata Data
  ) public nonReentrant {
    if (usedNonces[Data.nonce]) revert InvalidSignature();
    if (block.timestamp > Data.deadline) revert InvalidSignature();
    if (!Data.isPresale) revert InvalidSignature();

    if (Data.ticketsNumber % 10 ** TicketsContract.decimals() != 0) revert InvalidAmounts();
    if (
      getERC20Balance(
        _userPayment[Data.PayingUser][Data.chainID][Data.LotteryAddress],
        Data.payment.tokenAddress
      ) < Data.payment.amount
    ) revert NotEnoughBalance();

    verifyPaymentDataSigner(Data, signature);

    safeTransfer(Data.payment.tokenAddress, Data.PayingUser, Data.payment.amount);

    removeERC20FromState(
      _userPayment[Data.PayingUser][Data.chainID][Data.LotteryAddress],
      Data.payment
    );
    PaymentData memory newData = PaymentData(
      Data.payment,
      Data.PayingUser,
      Data.LotteryAddress,
      Data.chainID,
      getERC20Balance(
        _userPayment[Data.PayingUser][Data.chainID][Data.LotteryAddress],
        Data.payment.tokenAddress
      ) == 0
        ? 0
        : Data.ticketsNumber,
      Data.signer,
      Data.nonce,
      Data.deadline,
      Data.isPresale
    );
    updateTickets(
      newData.PayingUser,
      newData.chainID,
      newData.LotteryAddress,
      newData.ticketsNumber
    );
    removeERC20FromState(LotteryPayment[newData.LotteryAddress][newData.chainID], newData.payment);
    ILottery(newData.LotteryAddress).userRemovesAllocation(
      ILottery.PaymentData(
        newData.PayingUser,
        block.chainid,
        newData.ticketsNumber / 10 ** TicketsContract.decimals(),
        newData.payment.amount,
        newData.payment.decimals,
        true
      )
    );
  }

  function EnterFreeDrop(bytes calldata signature, PaymentData calldata Data) public nonReentrant {
    if (usedNonces[Data.nonce]) revert InvalidSignature();
    if (block.timestamp > Data.deadline) revert InvalidSignature();
    if (Data.ticketsNumber % 10 ** TicketsContract.decimals() != 0) revert InvalidAmounts();
    if (Data.isPresale) revert InvalidSignature();

    require(Data.payment.tokenAddress == address(0), "Payment token address of freeDrop should not be 0 address");

    uint256 currentTickets = _userTickets[Data.PayingUser][Data.chainID][Data.LotteryAddress];
    // 1st allocation must with amount & not able to change the amount after 1st allocation
    if (Data.ticketsNumber <= 0) revert InvalidAmounts();
    if (currentTickets == 0 && Data.payment.amount == 0) revert InvalidAmounts();
    if (currentTickets > 0 && Data.payment.amount > 0) revert InvalidAmounts();
    // Use removeFreeDrop for reducing tickets to avoid confusion
    if (Data.ticketsNumber < currentTickets) revert InvalidAmounts();

    // Keep track the positions number for removeFreeDrop
    if (Data.payment.amount > 0) {
        addERC20ToState(_userPayment[Data.PayingUser][Data.chainID][Data.LotteryAddress], Data.payment);
    }

    verifyPaymentDataSigner(Data, signature);
    updateTickets(Data.PayingUser, Data.chainID, Data.LotteryAddress, Data.ticketsNumber);
    ILottery(Data.LotteryAddress).userEnterAllocation(
      ILottery.PaymentData(
        Data.PayingUser,
        block.chainid,
        Data.ticketsNumber / 10 ** TicketsContract.decimals(),
        Data.payment.amount,
        Data.payment.decimals,
        false
      )
    );
  }

  /**
   * @dev userRemovesAllocation function is used to transfer back the user's ERC20 payment and mint the user tickets back
   * @param signature the signature of the user that is used to verify that the user is the one who signed the message
   * @param Data the data that is sent by the user
   */
  function RemoveFreeDrop(
    bytes calldata signature,
    PaymentData calldata Data
  ) public nonReentrant {
    if (usedNonces[Data.nonce]) revert InvalidSignature();
    if (block.timestamp > Data.deadline) revert InvalidSignature();
    if (Data.isPresale) revert InvalidSignature();
    
    if (Data.ticketsNumber % 10 ** TicketsContract.decimals() != 0) revert InvalidAmounts();
    require(Data.payment.tokenAddress == address(0), "Payment token address of freeDrop should not be 0 address");

    if (Data.ticketsNumber == 0 && Data.payment.amount == 0) revert InvalidAmounts();
    // When amount is inserted (remove all allocation), ticket must be 0
    if (Data.payment.amount > 0 && Data.ticketsNumber != 0) revert InvalidAmounts();

    uint256 currentTickets = _userTickets[Data.PayingUser][Data.chainID][Data.LotteryAddress];
    if (Data.ticketsNumber > currentTickets) revert InvalidAmounts();

    // Amount accepted must be same as the user amount entered at 1st allocation
    (uint256 userPaymentAmount, , ,) = getUserPayment(
      Data.PayingUser,
      Data.LotteryAddress,
      Data.chainID
    );
    if (Data.payment.amount > 0) {
      if (Data.payment.amount != userPaymentAmount) revert InvalidAmounts();

      removeERC20FromState(
        _userPayment[Data.PayingUser][Data.chainID][Data.LotteryAddress],
        Data.payment
      );
    }

    verifyPaymentDataSigner(Data, signature);
    updateTickets(
      Data.PayingUser,
      Data.chainID,
      Data.LotteryAddress,
      Data.ticketsNumber
    );
    ILottery(Data.LotteryAddress).userRemovesAllocation(
      ILottery.PaymentData(
        Data.PayingUser,
        block.chainid,
        Data.ticketsNumber / 10 ** TicketsContract.decimals(),
        Data.payment.amount,
        Data.payment.decimals,
        false
      )
    );
  }

  /**
   * @dev SetClaimMerkleRoot function is used to set the merkle root of the lottery to be used in the claim process
   * @param claimMerkleRoot the merkle root that is going to be used in the claim process
   * @param LotteryAddress the address of the lottery that the merkle root is going to be set for
   * @param chainID the chainID of the lottery that the merkle root is going to be set for
   */
  function SetClaimMerkleRoot(
    bytes32 claimMerkleRoot,
    Payment[] memory RaisedFund,
    address LotteryAddress,
    uint256 chainID
  ) external onlyRole(DEFAULT_ADMIN_ROLE) {
    if (claimMerkleRoot == bytes32(0)) revert invalidMerkleRoot();
    if (_claimMerkleRoot[chainID][LotteryAddress] != bytes32(0)) revert MerkleRootAlreadySet();
    _claimMerkleRoot[chainID][LotteryAddress] = claimMerkleRoot;
    delete RaisedFunds[LotteryAddress][chainID];
    for (uint256 j = 0; j < RaisedFund.length; j++) {
      uint256 LotteryPaymentAmount = getERC20Balance(
        LotteryPayment[LotteryAddress][chainID],
        RaisedFund[j].tokenAddress
      );
      if (LotteryPaymentAmount < RaisedFund[j].amount) revert NotEnoughBalance();
      RaisedFunds[LotteryAddress][chainID].push(RaisedFund[j]);
    }
  }

  /**a
   * @dev userClaimTickets function is used to transfer back the user's ERC20 payment
   * @param Data the data that is sent by the user
   * @param signature the signature of the user that is used to verify that the user is the one who signed the message
   */
  function userClaimTickets(
    ClaimRefundsInputs calldata Data,
    bytes calldata signature
  ) public nonReentrant {
    if (userClaimed[Data.user][Data.chainID][Data.LotteryAddress]) revert NothingToClaim();
    if (usedNonces[Data.nonce]) revert InvalidSignature();
    if (block.timestamp > Data.deadline) revert InvalidSignature();
    verifyClaimRefundsSignature(Data, signature);
    uint256 totalPayment = getTotalPaymentAmount(
      Payment(Data.paymentAmount, Data.paymentTokenAddress, Data.paymentDecimals),
      _userPayment[Data.user][Data.chainID][Data.LotteryAddress]
    );
    uint256 totalClaimableTickets = userClaimableTickets(
      Data.LotteryAddress,
      Data.chainID,
      Data.user,
      Data.balance,
      Data.proof
    );
    if (totalClaimableTickets == 0) revert NothingToClaim();

    if (totalPayment == 0) revert InvalidAmounts();
    if (totalPayment != Data.balance) revert InvalidAmounts();
    userClaimed[Data.user][Data.chainID][Data.LotteryAddress] = true;
    removeERC20FromState(
      _userPayment[Data.user][Data.chainID][Data.LotteryAddress],
      Payment(Data.paymentAmount, Data.paymentTokenAddress, Data.paymentDecimals)
    );
    removeERC20FromState(
      LotteryPayment[Data.LotteryAddress][Data.chainID],
      Payment(Data.paymentAmount, Data.paymentTokenAddress, Data.paymentDecimals)
    );
    safeTransfer(Data.paymentTokenAddress, Data.user, Data.paymentAmount);
  }

  /**
   * @dev addStableCoin function is used to add a stablecoin to the acceptable stableCoins list
   * @param stablecoin the address of the stablecoin that is going to be added
   */
  function addStableCoin(address stablecoin) public onlyRole(DEFAULT_ADMIN_ROLE) {
    acceptableStableCoins[stablecoin] = true;
    emit StablecoinAdded(stablecoin);
  }

  /**
   * @dev removeStableCoin function is used to remove a stableCoin from the acceptable stableCoins list
   * @param stablecoin the address of the stablecoin that is going to be removed
   */
  function removeStableCoin(address stablecoin) public onlyRole(DEFAULT_ADMIN_ROLE) {
    acceptableStableCoins[stablecoin] = false;
    emit StablecoinRemoved(stablecoin);
  }

  function UpdateTreasury(address _treasury) public onlyRole(DEFAULT_ADMIN_ROLE) {
    if (_treasury == address(0)) revert ZeroAddress();
    Treasury = _treasury;
  }

  function WithdrawFunds(
    address LotteryAddress,
    uint256 chainID
  ) public onlyRole(DEFAULT_ADMIN_ROLE) {
    Payment[] storage funds = RaisedFunds[LotteryAddress][chainID];
    for (uint256 j = 0; j < funds.length; j++) {
      if (funds[j].amount == 0) continue;
      uint256 amount = funds[j].amount;
      funds[j].amount = 0;
      safeTransfer(funds[j].tokenAddress, Treasury, amount);
    }
  }

  function WithdrawableFunds(
    address LotteryAddress,
    uint256 chainID
  ) public view returns (Payment[] memory) {
    return RaisedFunds[LotteryAddress][chainID];
  }

  /**
   * @dev userClaimableTickets function is used to calculate the amount of tickets that the user can claim
   * @param LotteryAddress the address of the lottery that the user is going to claim from
   * @param chainID the chainID of the lottery that the user is going to claim from
   * @param user the address of the user that is going to claim his tickets
   * @param balance the amount of tickets that the user is going to claim
   * @param proof the proof that the user is going to use to verify his claim
   */
  function userClaimableTickets(
    address LotteryAddress,
    uint256 chainID,
    address user,
    uint256 balance,
    bytes32[] memory proof
  ) public view returns (uint256) {
    if (_claimMerkleRoot[chainID][LotteryAddress] == bytes32(0)) {
      return 0;
    }
    bytes32 leaf = keccak256(abi.encodePacked(user, balance));
    if (MerkleProofUpgradeable.verify(proof, _claimMerkleRoot[chainID][LotteryAddress], leaf)) {
      return balance;
    } else {
      return 0;
    }
  }

  function changeTicketsContract(address newTicketAddress) public onlyRole(DEFAULT_ADMIN_ROLE) {
    if (newTicketAddress == address(0)) revert ZeroAddress();
    TicketsContract = MintBurnToken(newTicketAddress);
  }

  /**
   * @dev isStableCoinAccepted function is used to check if a stablecoin is in the acceptable stableCoins list
   * @param stablecoin the address of the stablecoin that is going to be checked
   */
  function isStableCoinAccepted(address stablecoin) public view returns (bool) {
    return acceptableStableCoins[stablecoin];
  }

  /**
   * @dev getUserPayment function is used to get the user payment for a specific lottery
   * @param user the address of the user that is going to be checked
   * @param lotteryAddress the address of the lottery that the user payment is going to be checked
   * @param chainID the chainID of the lottery that the user payment is going to be checked
   */
  function getUserPayment(
    address user,
    address lotteryAddress,
    uint256 chainID
  ) public view returns (uint256, address, uint256, uint256) {
    Payment[] memory payment = _userPayment[user][chainID][lotteryAddress];
    for (uint256 j = 0; j < payment.length; j++) {
      if (payment[j].amount > 0) {
        return (
          payment[j].amount,
          payment[j].tokenAddress,
          payment[j].decimals,
          _userTickets[user][chainID][lotteryAddress]
        );
      }
    }
    return (0, address(0), 0, _userTickets[user][chainID][lotteryAddress]);
  }

  /**
   * @dev updateTickets function is used to update the user tickets, mint or burn the user tickets to match the user desired tickets number
   * @param PayingUser the address of the user that is going to be updated
   * @param chainID the chainID of the user that is going to be updated
   * @param LotteryAddress the address of the lottery that the user is going to be updated
   * @param finalTickets the amount of tickets that the user is going to have
   */
  function updateTickets(
    address PayingUser,
    uint256 chainID,
    address LotteryAddress,
    uint256 finalTickets
  ) internal {
    uint256 currentTickets = _userTickets[PayingUser][chainID][LotteryAddress];
    _userTickets[PayingUser][chainID][LotteryAddress] = finalTickets;
    if (finalTickets < currentTickets) {
      TicketsContract.mint(PayingUser, currentTickets - finalTickets);
    } else if (finalTickets > currentTickets) {
      if (TicketsContract.balanceOf(PayingUser) < finalTickets - currentTickets)
        revert NotEnoughBalance();
      TicketsContract.burnFrom(PayingUser, finalTickets - currentTickets);
    }
  }

  /**
   * @dev verifyPaymentDataSigner function is used to verify that the data is signed by the signer
   * @param data the data that is going to be verified
   * @param signature the signature that is going to be used to verify the data
   */
  function verifyPaymentDataSigner(PaymentData calldata data, bytes calldata signature) internal {
    bytes32 encryptedData = keccak256(
      abi.encode(
        keccak256(
          'PaymentData(uint256 amount,address tokenAddress,uint256 tokenDecimals,address PayingUser,address LotteryAddress,uint256 chainID,uint256 ticketsNumber,address signer,uint256 nonce,uint256 deadline,bool isPresale)'
        ),
        data.payment.amount,
        data.payment.tokenAddress,
        data.payment.decimals,
        data.PayingUser,
        data.LotteryAddress,
        data.chainID,
        data.ticketsNumber,
        data.signer,
        data.nonce,
        data.deadline,
        data.isPresale
      )
    );
    bytes32 digest = _hashTypedDataV4(encryptedData);
    address signer = ECDSAUpgradeable.recover(digest, signature);
    if (data.signer != signer) revert InvalidSignature();
    if (!hasRole(OPERATION_ROLE, data.signer)) revert InvalidSignature();
    usedNonces[data.nonce] = true;
    emit NonceUsed(data.nonce);
  }

  function verifyClaimRefundsSignature(
    ClaimRefundsInputs calldata Data,
    bytes calldata signature
  ) internal {
    bytes32 encodedClaimRefundsInputs = keccak256(
      abi.encode(
        keccak256(
          'ClaimRefundsInputs(address LotteryAddress,uint256 chainID,address user,uint256 balance,uint256 paymentAmount,address paymentTokenAddress,uint256 paymentDecimals,bytes32[] proof,address signer,uint256 nonce,uint256 deadline)'
        ),
        Data.LotteryAddress,
        Data.chainID,
        Data.user,
        Data.balance,
        Data.paymentAmount,
        Data.paymentTokenAddress,
        Data.paymentDecimals,
        keccak256(abi.encodePacked(Data.proof)),
        Data.signer,
        Data.nonce,
        Data.deadline
      )
    );
    bytes32 digest = _hashTypedDataV4(encodedClaimRefundsInputs);
    address signer = ECDSAUpgradeable.recover(digest, signature);
    if (Data.signer != signer) revert InvalidSignature();
    if (!hasRole(OPERATION_ROLE, Data.signer)) revert InvalidSignature();
    usedNonces[Data.nonce] = true;
    emit NonceUsed(Data.nonce);
  }

  /**
   * @dev addERC20ToState function is used to add the user payment to the state
   * @param state the state that the user payment is going to be added to
   * @param ERC20Balance the user payment that is going to be added
   */
  function addERC20ToState(Payment[] storage state, Payment memory ERC20Balance) internal {
    bool found = false;
    for (uint256 j = 0; j < state.length; j++) {
      if (state[j].tokenAddress == ERC20Balance.tokenAddress) {
        state[j].amount += ERC20Balance.amount;
        found = true;
        break;
      }
    }
    if (!found) {
      state.push(ERC20Balance);
    }
  }

  /**
   * @dev removeERC20FromState function is used to remove the user payment from the state
   * @param state the state that the user payment is going to be removed from
   * @param ERC20Balance the user payment that is going to be removed
   */
  function removeERC20FromState(Payment[] storage state, Payment memory ERC20Balance) internal {
    for (uint256 j = 0; j < state.length; j++) {
      if (state[j].tokenAddress == ERC20Balance.tokenAddress) {
        state[j].amount -= ERC20Balance.amount;
        break;
      }
    }
  }

  /**
   * @dev getERC20Balance function is used to get the user balance of a specific ERC20 token
   * @param state the state that the user payment is stored in
   * @param TokenAddress the address of the ERC20 token that the user balance is going to be checked
   */
  function getERC20Balance(
    Payment[] storage state,
    address TokenAddress
  ) internal view returns (uint256) {
    // find token in state , if found return amount else return 0
    for (uint256 j = 0; j < state.length; j++) {
      if (state[j].tokenAddress == TokenAddress) {
        return state[j].amount;
      }
    }
    return 0;
  }

  /**
   * @dev getTotalPaymentAmount function is used to get the total amount of the user payment
   * @param payment the user payment that is going to be checked
   * @param user_Payment the user payment that is stored in the state
   */
  function getTotalPaymentAmount(
    Payment memory payment,
    Payment[] storage user_Payment
  ) internal view returns (uint256) {
    if (getERC20Balance(user_Payment, payment.tokenAddress) < payment.amount)
      revert NotEnoughBalance();
    uint256 total = payment.amount;

    return total;
  }

  /**
   * @dev safeTransferFrom function is used to transfer tokens from one address to another
   * @param Token the address of the ERC20 token that is going to be transferred
   * @param from the address that the ERC20 token is going to be transferred from
   * @param to the address that the ERC20 token is going to be transferred to
   * @param amount the amount of the ERC20 token that is going to be transferred
   */
  function safeTransferFrom(address Token, address from, address to, uint256 amount) internal {
    if (ERC20Upgradeable(Token).balanceOf(from) < amount) revert NotEnoughBalance();
    ERC20Upgradeable(Token).safeTransferFrom(from, to, amount);
  }

  /**
   * @dev safeTransfer function is used to transfer tokens from the contract to another address
   * @param Token the address of the ERC20 token that is going to be transferred
   * @param to the address that the ERC20 token is going to be transferred to
   * @param amount the amount of the ERC20 token that is going to be transferred
   */
  function safeTransfer(address Token, address to, uint256 amount) internal {
    if (ERC20Upgradeable(Token).balanceOf(address(this)) < amount) revert NotEnoughBalance();
    ERC20Upgradeable(Token).safeTransfer(to, amount);
  }

  function transferOwnership(address newOwner) public onlyRole(DEFAULT_ADMIN_ROLE) {
    require(newOwner != address(0), 'Ownable: new owner is the zero address');
    require(newOwner != msg.sender, 'Ownable: new owner is the current owner');
    _setupRole(DEFAULT_ADMIN_ROLE, newOwner);
    revokeRole(DEFAULT_ADMIN_ROLE, msg.sender);
  }

  function _authorizeUpgrade(
    address newImplementation
  ) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}

  uint256[50] private __gap;
}