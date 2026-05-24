// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

import '@openzeppelin/contracts-upgradeable/utils/cryptography/ECDSAUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/utils/cryptography/ECDSAUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/utils/cryptography/draft-EIP712Upgradeable.sol';
import { IERC20PermitUpgradeable } from '@openzeppelin/contracts-upgradeable/token/ERC20/extensions/draft-IERC20PermitUpgradeable.sol';
import { MerkleProofUpgradeable } from '@openzeppelin/contracts-upgradeable/utils/cryptography/MerkleProofUpgradeable.sol';
import '../libraries/HelixConfigHelper.sol';
import '../base/HelixBase.sol';
import { IGnosisSafe } from '../interfaces/IGnosisSafe.sol';
import { IHelixDeal } from '../interfaces/IHelixDeal.sol';
import { IHelixConfig } from '../interfaces/IHelixConfig.sol';
import { IERC20withDec } from '../interfaces/IERC20withDec.sol';
import { SafeERC20 } from '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import { IVersioned } from '../interfaces/IVersioned.sol';

/*

██╗  ██╗███████╗██╗     ██╗██╗  ██╗    ██████╗ ███████╗ █████╗ ██╗     
██║  ██║██╔════╝██║     ██║╚██╗██╔╝    ██╔══██╗██╔════╝██╔══██╗██║     
███████║█████╗  ██║     ██║ ╚███╔╝     ██║  ██║█████╗  ███████║██║     
██╔══██║██╔══╝  ██║     ██║ ██╔██╗     ██║  ██║██╔══╝  ██╔══██║██║     
██║  ██║███████╗███████╗██║██╔╝ ██╗    ██████╔╝███████╗██║  ██║███████╗
╚═╝  ╚═╝╚══════╝╚══════╝╚═╝╚═╝  ╚═╝    ╚═════╝ ╚══════╝╚═╝  ╚═╝╚══════╝
                                                                       
*/             

/**
 * @title HelixDeal
 * @notice Helix Deal contract is the main contract for most borrower/investor interactions such as investment, update repayment Data, TVL.
 * @author Helix
 */

contract HelixDeal is HelixBase, IHelixDeal, IVersioned {
  using HelixConfigHelper for IHelixConfig;
  using SafeERC20 for IERC20withDec;

  // ============= State =============== // 

  uint8 internal constant MAJOR_VERSION = 1;
  uint8 internal constant MINOR_VERSION = 0;
  uint8 internal constant PATCH_VERSION = 0;

  // bytes32 public constant INDICATIVE_INTEREST_TYPEHASH = keccak256("IndicativeInterest(address investor,address deal,uint256 investmentDate,uint256 amount,uint256 salt,uint256 expirationTime)");
  bytes32 public constant INDICATIVE_INTEREST_TYPEHASH =
    0xe5d5b031d83393a8e2ef8a897e8032c81f5f2e60ccb7d812bd25f4673156589b;

  /// @notice Get HelixConfig contract's address
  IHelixConfig public config;
  /// @notice deal Manager - Gnosis 
  address public dealManager;
  /// @notice deal wallet
  address public dealWallet;
  /// @notice Borrower wallet
  address public borrower;
  /// @notice An array that use for defining the list of allowed Manager type 
  uint256[] public allowedUIDTypes;
  /// @notice The token in which deal's investment and repayments happen
  IERC20withDec public dealCurrency;

  // User address (investor) -> repayment tx hash -> Repayment transaction
  mapping(address => mapping(bytes32 => Repayment)) public repayments;
  // User address (investor) -> investment hash -> Investment
  mapping(address => mapping(bytes32 => Investment)) public investments;
  // Investment hash -> cancelled or finalized
  mapping(bytes32 => bool) public cancelledOrFinalizedInvestments;

  constructor() {
    _disableInitializers();
  }

  /// @inheritdoc IVersioned
  function getVersion()
    external
    pure
    override
    returns (uint8[3] memory _version)
  {
    (_version[0], _version[1], _version[2]) = (
      MAJOR_VERSION,
      MINOR_VERSION,
      PATCH_VERSION
    );
  }

  /// @inheritdoc IHelixDeal
  function initialize(
    address[5] calldata _addresses,
    uint256[] calldata _allowedUIDTypes
  ) public override initializer {
    for (uint i; i < _addresses.length - 1; ) {
      require(address(_addresses[i]) != address(0), HelixErrors.NOT_ALLOWED_ZERO_ADDRESS);
      unchecked {
        i++;
      }
    }

    config = IHelixConfig(_addresses[0]);
    dealManager = _addresses[1];
    dealWallet = _addresses[2];
    dealCurrency = IERC20withDec(_addresses[3]);
    borrower = _addresses[4];

    if (_allowedUIDTypes.length == 0) {
      uint256[1] memory defaultAllowedUIDTypes = [config.getAuthoriser().ID_TYPE_0()];
      allowedUIDTypes = defaultAllowedUIDTypes;
    } else {
      allowedUIDTypes = _allowedUIDTypes;
    }

    __HelixBase_init(dealManager);
  }

  /// @notice Pauses the deal for emergency purpose.
  function emergencyShutdown() external whenNotPaused onlyManager {
      _pause();
     emit EmergencyShutdown(address(this));
  }

  /// @notice Unpause deal.
  function unpauseDeal() external onlyManager {
    _unpause();
    emit DealUnpaused(address(this));
  }

  /// @inheritdoc IHelixDeal
  function changeDealWallet(
    address _dealWallet
  ) external override onlyManager whenNotPaused {
    require(_dealWallet != address(0), HelixErrors.NOT_ALLOWED_ZERO_ADDRESS);
    address previousDealWallet = dealWallet;
    dealWallet = _dealWallet;
    emit DealWalletUpdated(previousDealWallet, _dealWallet);
  }

  /// @inheritdoc IHelixDeal
  function invest(
    uint256 investmentDate,
    uint256 amount,
    uint256 expirationTime,
    uint256 salt,
    bytes calldata investSignature
  ) public override whenNotPaused  nonReentrant {
    address investorAddress = _msgSender();

    require(hasAllowedUID(investorAddress), HelixErrors.KYC_CONDITION_NOT_SATISFIED);
    require(block.timestamp <= expirationTime, HelixErrors.EXPIRED_INVESTMENT_PLACEHOLDER);

    bytes32 investmentHash = getInvestmentHash(investorAddress, investmentDate, amount, salt, expirationTime);

    require(!_isCancelledOrFinalized(investmentHash), HelixErrors.INVESTMENT_HAS_BEEN_FINALIZED_OR_CANCELLED);
    
    // Check signatures which come from deal manager owners
    _allowInvestByOnlyManager(
        investorAddress,
        investmentDate,
        amount,
        salt,
        expirationTime,
        investSignature
    ); 

    // Mint deal token if not exists and update principal amount
    IHelixDealTokens dealTokens = config.getHelixDealTokens();
    dealTokens.mint(
      amount,
      investorAddress
    );
    // It should be 0 for both principalRepaid and cumulativeReturns
    dealTokens.updateDealStats(amount, 0, 0);
    dealTokens.updateProtocolStats(amount, 0, 0);

    dealCurrency.safeTransferFrom(investorAddress, dealWallet, amount);

    investments[investorAddress][investmentHash] = Investment({
      investmentDate: investmentDate,
      amount: amount,
      status: InvestmentStatus.Invested
    });
    
    cancelledOrFinalizedInvestments[investmentHash] = true;

    emit Invested(investorAddress, address(this), dealWallet, investmentDate, amount, salt, expirationTime, investmentHash);
  }

  
   /// @inheritdoc IHelixDeal
  function investWithPermit(
    uint256 investmentDate,
    uint256 amount,
    uint256 expirationTime,
    uint256 salt, 
    bytes calldata investSignature, 
    uint256 deadline, // EIP2612 permit condition
    uint8 v,
    bytes32 r,
    bytes32 s
  ) public override whenNotPaused {
    IERC20PermitUpgradeable(address(dealCurrency)).permit(
      _msgSender(),
      address(this),
      amount,
      deadline,
      v,
      r,
      s
    );
    invest(investmentDate, amount, expirationTime, salt, investSignature);
  }
  
  /// @inheritdoc IHelixDeal
  function bookRepayments(Repayment[] calldata _repayments) external override onlyManager whenNotPaused  {
    IHelixDealTokens dealTokens = config.getHelixDealTokens();
    
    for (uint i; i < _repayments.length; ) {
      Repayment memory repayment = _repayments[i];

      address investor = repayment.investor;
      bytes32 txHash = repayment.txHash;

      require(!isRepaymentBooked(investor, txHash), HelixErrors.REPAYMENT_ALREADY_BOOKED);

      uint principalRepaid = repayment.principalRepaid;
      uint returnPaid = repayment.returnPaid;

      if (repayment.txType == RepaymentTransactionType.Principal) {
        require(principalRepaid != 0 && returnPaid == 0, HelixErrors.INVALID_REPAYMENT);
      } else if (repayment.txType == RepaymentTransactionType.Return) {
        require(principalRepaid == 0 && returnPaid != 0, HelixErrors.INVALID_REPAYMENT);
      } else {
        revert();
      }
      
      uint tokenId = dealTokens.calculateTokenId(address(this), investor);
      
      dealTokens.bookRepayment(tokenId, principalRepaid, returnPaid);
      dealTokens.updateDealStats(0, principalRepaid, returnPaid);
      dealTokens.updateProtocolStats(0, principalRepaid, returnPaid);

      repayments[investor][txHash] = repayment;

      emit RepaymentBooked(
        txHash,
        investor,
        repayment.txType,
        principalRepaid, 
        returnPaid
      );

      unchecked {
        i++;
      }
    }
  }

  /// @inheritdoc IHelixDeal
  function cancelInvestment(
    address account,
    uint256 investmentDate,
    uint256 amount,
    uint256 expirationTime,
    uint256 salt
  ) public onlyManager override  {
    bytes32 investmentHash = getInvestmentHash(account, investmentDate, amount, salt, expirationTime);

    require(!_isCancelledOrFinalized(investmentHash), HelixErrors.INVESTMENT_HAS_BEEN_FINALIZED_OR_CANCELLED);

    cancelledOrFinalizedInvestments[investmentHash] = true;

    emit Cancelled(account, investmentDate, amount, salt, investmentHash);
  }

  /// @inheritdoc IHelixDeal
  function dealTVL() public view override returns(uint256) {
    return config.getHelixDealTokens().dealTVL(address(this));
  }

  /// @inheritdoc IHelixDeal
  function dealStats() public view override returns(DealStats memory) {
    return config.getHelixDealTokens().getDealStats(address(this));
  }

  /// @inheritdoc IHelixDeal
  function hasAllowedUID(address sender) public view override returns (bool) {
    return config.getAuthoriser().authorizeOnlyIdTypes(sender, allowedUIDTypes);
  }

  /// @notice check if a particular repayment has already been booked
  function isRepaymentBooked(address investor, bytes32 txHash) public view returns(bool) {
    Repayment memory repayment = repayments[investor][txHash];
    return repayment.investor != address(0);
  }

  /**
     * @notice Returns the pre-image of the investment hash (see getInvestmentHash).
     * @param investor Investor address.
     * @param investmentDate Investor investment date (informational).
     * @param amount Pre-defined Investment amount.
     * @param salt Random identifier for generating unique investment hash.
     * @param expirationTime How long the signature from deal manager will be valid.
     * @return Investment hash bytes.
  */
   function encodeInvestmentData(
    address investor,
    uint256 investmentDate,
    uint256 amount,
    uint256 salt,
    uint256 expirationTime
  ) private view returns (bytes memory) {
    bytes32 investmentHash = keccak256(
      abi.encode(
        INDICATIVE_INTEREST_TYPEHASH,
        investor,
        address(this),
        investmentDate,
        amount,
        salt,
        expirationTime
      )
    );

    return abi.encodePacked(bytes1(0x19), bytes1(0x01), IGnosisSafe(dealManager).domainSeparator(), investmentHash);
  }

  function getInvestmentHash(
    address investor,
    uint256 investmentDate,
    uint256 amount,
    uint256 salt,
    uint256 expirationTime
  ) public view returns(bytes32) {
    return keccak256(encodeInvestmentData(investor, investmentDate, amount, salt, expirationTime));
  }

  function _allowInvestByOnlyManager(
    address investor,
    uint256 investmentDate,
    uint256 amount,
    uint256 salt,
    uint256 expirationTime,
    bytes calldata signatures
  ) internal view {
    IGnosisSafe(dealManager).checkSignatures(
      getInvestmentHash(
        investor, 
        investmentDate, 
        amount, 
        salt, 
        expirationTime
      ),
      new bytes(0),
      signatures
    );
  }

  function _isCancelledOrFinalized(bytes32 _investmentHash) internal view returns(bool) {
    return cancelledOrFinalizedInvestments[_investmentHash];
  }

  // ============= Modifier =============== //
  modifier onlyManager() {
    require(hasRole(OWNER_ROLE, _msgSender()), HelixErrors.CALLER_NOT_MANAGER);
    _;
  }
}
