//SPDX-License-Identifier:MIT
pragma solidity 0.8.20;

import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

import {IKYCRegistry} from "./interfaces/IKYCRegistry.sol";
import {IPool} from "./interfaces/IPool.sol";
import {IPoolRegistry} from "./interfaces/IPoolRegistry.sol";

import {IInsuranceCapitalLayer} from "./interfaces/IInsuranceCapitalLayer.sol";
import {IDecentralizedFund} from "./interfaces/IDecentralizedFund.sol";
import {ConvertDecimals} from "./utils/ConvertDecimals.sol";
import {InsuranceCapitalLayer} from "./InsuranceCapitalLayer.sol";
import {IDepositTokenRegistry} from "./interfaces/IDepositTokenRegistry.sol";
import "./SharePriceCalculatorFactory.sol";
import "./InsuranceCapitalLayerFactory.sol";
import "./errors/DecentralizedFundErrors.sol";

contract DecentralizedFund is
  IDecentralizedFund,
  ReentrancyGuard,
  AccessControl
{
  using SafeERC20 for IERC20;
  /// @dev Operator role
  bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");
  /// @dev KYCRegistry address
  IKYCRegistry public immutable KYC_REGISTRY;
  /// @dev PoolRegistry address
  IPoolRegistry public poolRegistry;

  /// @dev Treasury wallet address
  address public treasuryWallet;
  /// @dev Recipient wallet address
  address public recipientWallet;
  /// @dev Operator address
  address public operator;

  /// @dev Re token price in 18 decimals
  uint public rePrice18;

  /// @dev insurance capital layer index head for saving it to insuranceCapitalLayers
  uint public insuranceCapitalLayerHead;

  /// @dev insurance capital layers mapping with index
  /// @dev eg: 1 -> 0xAbCd..., 2 -> 0xEfGh...
  mapping(uint => address) public insuranceCapitalLayers;

  /// @dev reverse one of the insuranceCapitalLayers ^^
  /// @dev eg: 0xAbCd... -> 1, 0xEfGh... -> 2
  mapping(address => uint) private _insuranceCapitalLayersAddressToId;

  /// @dev save the reserved amount per insurance capital layer (with index)
  /// @dev eg: 1 -> 10,000,000, 2 -> 15,000,000
  /// @notice the reserved amount is following the USDC token decimal
  mapping(uint => uint) public reserveAmountPerICL;

  /// @dev save the reserved amount with pool and insurance capital layers
  /// @dev icl id -> pool address -> 10,000,000
  /// @dev eg: 1 -> 10,000,000, 2 -> 15,000,000
  /// @notice the reserved amount is following the USDC token decimal
  mapping(uint => mapping(address => uint)) public reserveAmountPerPool;

  /// @dev DepositTokenRegistry address
  IDepositTokenRegistry public depositTokenRegistry;

  SharePriceCalculatorFactory public sharePriceCalculatorFactory;

  InsuranceCapitalLayerFactory public immutable insuranceCapitalLayerFactory;

  //////////////
  /// EVENTS ///
  //////////////
  event USDCWithdrawan(address recipient, uint amount);
  event InsuranceCapitalLayerCreated(uint head, address iclAddress);
  event PoolAddedToWithdrawQueue(uint id, address poolAddress, uint amount);

  /////////////////
  /// MODIFIERS ///
  /////////////////

  /**
   * @param initialAdmin_ Default admin address
   * @param operator_ Operator address
   * @param kycRegistry_ KYCRegistry address
   * @param recipientWallet_ Recipient wallet address
   * @param treasuryWallet_ Treasury wallet address
   * @param poolRegistry_ PoolRegistry address
   * @param depositTokenRegistry_ DepositTokenRegistry address
   * @param _sharePriceCalculatorFactory SharePriceCalculatorFactory address
   * @param _insuranceCapitalLayerFactory InsuranceCapitalLayerFactory address
   */
  constructor(
    address initialAdmin_,
    address operator_,
    address kycRegistry_,
    address recipientWallet_,
    address treasuryWallet_,
    address poolRegistry_,
    address depositTokenRegistry_,
    address _sharePriceCalculatorFactory,
    address _insuranceCapitalLayerFactory
  ) {
    KYC_REGISTRY = IKYCRegistry(kycRegistry_);
    operator = operator_;
    recipientWallet = recipientWallet_;
    treasuryWallet = treasuryWallet_;
    poolRegistry = IPoolRegistry(poolRegistry_);
    depositTokenRegistry = IDepositTokenRegistry(depositTokenRegistry_);
    sharePriceCalculatorFactory = SharePriceCalculatorFactory(
      _sharePriceCalculatorFactory
    );
    insuranceCapitalLayerFactory = InsuranceCapitalLayerFactory(
      _insuranceCapitalLayerFactory
    );
    _grantRole(DEFAULT_ADMIN_ROLE, initialAdmin_);
    _grantRole(OPERATOR_ROLE, operator);
  }

  /////////////////////////////////////
  /// Operator Functions (External) ///
  /////////////////////////////////////

  /**
   * @dev Update treasury wallet address
   * @param treasuryWallet_ new treasury wallet address
   */
  function updateTreasuryWallet(
    address treasuryWallet_
  ) external onlyRole(OPERATOR_ROLE) {
    if (treasuryWallet_ == address(0)) {
      revert InvalidAddress();
    }
    treasuryWallet = treasuryWallet_;
  }

  /**
   * @dev Update Recipient wallet address
   * @param recipientWallet_ new recipient wallet address
   */
  function updateRecipientWallet(
    address recipientWallet_
  ) external onlyRole(OPERATOR_ROLE) {
    if (recipientWallet_ == address(0)) {
      revert InvalidAddress();
    }
    recipientWallet = recipientWallet_;
  }

  /**
   * @dev Update Operator wallet address
   * @param newOperator_ new operator wallet address
   */
  function updateOperatorAddress(
    address newOperator_
  ) external onlyRole(OPERATOR_ROLE) {
    if (newOperator_ == address(0)) {
      revert InvalidAddress();
    }
    if (newOperator_ == operator) {
      revert OperatorAlreadySet();
    }
    _revokeRole(OPERATOR_ROLE, operator);
    operator = newOperator_;
    _grantRole(OPERATOR_ROLE, operator);
  }

  /**
   * @dev Create Insurance Capital Layer
   * @param tokenName The name for the share token
   * @param tokenSymbol The symbol for the share token
   * @param operator_ Insurance Capital Layer operator address
   * @param initialSharePrice The initial share price
   */
  function createInsuranceCapital(
    string memory tokenName,
    string memory tokenSymbol,
    address admin_,
    address operator_,
    uint256 initialSharePrice
  ) external onlyRole(OPERATOR_ROLE) {
    insuranceCapitalLayerHead += 1;

    address newICL = insuranceCapitalLayerFactory.createInsuranceCapitalLayer(
      tokenName,
      tokenSymbol,
      admin_,
      operator_,
      initialSharePrice
    );

    insuranceCapitalLayers[insuranceCapitalLayerHead] = newICL;
    _insuranceCapitalLayersAddressToId[newICL] = insuranceCapitalLayerHead;

    emit InsuranceCapitalLayerCreated(insuranceCapitalLayerHead, newICL);
  }

  function setPoolRegistry(
    address poolRegistryAddress
  ) external onlyRole(OPERATOR_ROLE) {
    if (poolRegistryAddress == address(0)) {
      revert InvalidAddress();
    }
    poolRegistry = IPoolRegistry(poolRegistryAddress);
  }
}
