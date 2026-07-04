//SPDX-License-Identifier:MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "./InsuranceCapitalLayer.sol";
import "./CollateralManager.sol";
import {ISharePriceCalculator} from "./interfaces/ISharePriceCalculator.sol";
import {SharePriceCalculatorFactory} from "./SharePriceCalculatorFactory.sol";
import {ICollateralManagerFactory} from "./interfaces/ICollateralManagerFactory.sol";
import {ShareToken} from "./token/ShareToken.sol";

contract InsuranceCapitalLayerFactory is AccessControl {
  IKYCRegistry public immutable KYC_REGISTRY;
  IPoolRegistry public immutable POOL_REGISTRY;
  IDepositTokenRegistry public immutable DEPOSIT_TOKEN_REGISTRY;
  SharePriceCalculatorFactory public immutable SHARE_PRICE_CALCULATOR_FACTORY;
  ICollateralManagerFactory public immutable COLLATERAL_MANAGER_FACTORY;
  address public immutable ICL_IMPLEMENTATION;
  address public immutable SHARE_TOKEN_IMPLEMENTATION;

  bytes32 public constant DEPLOYER_ROLE = keccak256("DEPLOYER_ROLE");

  event InsuranceCapitalLayerCreated(
    address indexed icl,
    address indexed shareToken
  );

  constructor(
    address kycRegistry_,
    address poolRegistry_,
    address depositTokenRegistry_,
    address sharePriceCalculatorFactory_,
    address collateralManagerFactory_
  ) {
    KYC_REGISTRY = IKYCRegistry(kycRegistry_);
    POOL_REGISTRY = IPoolRegistry(poolRegistry_);
    DEPOSIT_TOKEN_REGISTRY = IDepositTokenRegistry(depositTokenRegistry_);
    SHARE_PRICE_CALCULATOR_FACTORY = SharePriceCalculatorFactory(
      sharePriceCalculatorFactory_
    );
    COLLATERAL_MANAGER_FACTORY = ICollateralManagerFactory(
      collateralManagerFactory_
    );

    // Deploy the implementations
    InsuranceCapitalLayer iclImplementation = new InsuranceCapitalLayer();
    ICL_IMPLEMENTATION = address(iclImplementation);

    ShareToken shareTokenImplementation = new ShareToken();
    SHARE_TOKEN_IMPLEMENTATION = address(shareTokenImplementation);

    _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
  }

  function createInsuranceCapitalLayer(
    string memory tokenName,
    string memory tokenSymbol,
    address admin,
    address operator,
    uint256 initialSharePrice
  ) external onlyRole(DEPLOYER_ROLE) returns (address) {
    ERC1967Proxy shareTokenProxy = new ERC1967Proxy(
      address(SHARE_TOKEN_IMPLEMENTATION),
      abi.encodeWithSelector(
        ShareToken.initialize.selector,
        tokenName,
        tokenSymbol,
        18,
        msg.sender
      )
    );

    bytes memory initData = abi.encodeWithSelector(
      InsuranceCapitalLayer.initialize.selector,
      msg.sender,
      tokenName,
      tokenSymbol,
      address(KYC_REGISTRY),
      operator,
      address(DEPOSIT_TOKEN_REGISTRY),
      address(
        SHARE_PRICE_CALCULATOR_FACTORY.createSharePriceCalculator(
          address(DEPOSIT_TOKEN_REGISTRY),
          initialSharePrice,
          admin,
          operator
        )
      )
    );

    ERC1967Proxy iclProxy = new ERC1967Proxy(
      address(ICL_IMPLEMENTATION),
      initData
    );

    address newICL = address(iclProxy);

    // Set up roles
    ShareToken shareToken = ShareToken(address(shareTokenProxy));
    shareToken.grantRole(shareToken.DEFAULT_ADMIN_ROLE(), admin);
    shareToken.grantRole(shareToken.MINTER_ROLE(), newICL);

    // Set sharetoken  in ICL
    InsuranceCapitalLayer(newICL).setShareToken(
      ShareToken(address(shareTokenProxy))
    );
    InsuranceCapitalLayer(newICL).grantRole(
      InsuranceCapitalLayer(newICL).DEFAULT_ADMIN_ROLE(),
      admin
    );

    emit InsuranceCapitalLayerCreated(newICL, address(shareTokenProxy));
    return newICL;
  }
}
