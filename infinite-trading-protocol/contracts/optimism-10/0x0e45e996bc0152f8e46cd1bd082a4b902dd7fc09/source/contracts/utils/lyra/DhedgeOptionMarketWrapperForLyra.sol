// SPDX-License-Identifier: MIT
pragma solidity 0.7.6;
pragma experimental ABIEncoderV2;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";

import "../../guards/contractGuards/LyraOptionMarketWrapperContractGuard.sol";
import "../../interfaces/aave/v2/ILendingPool.sol";
import "../../interfaces/lyra/IOptionMarketViewer.sol";
import "../../interfaces/lyra/IOptionMarketWrapper.sol";
import "../../interfaces/lyra/IOptionToken.sol";
import "../../interfaces/lyra/ISynthetixAdapter.sol";
import "../../interfaces/lyra/IGWAVOracle.sol";
import "../../interfaces/synthetix/ISynthetix.sol";
import "../../interfaces/IPoolLogic.sol";
import "../../interfaces/IHasGuardInfo.sol";

contract DhedgeOptionMarketWrapperForLyra is Ownable {
  using SafeMath for uint256;

  uint256 public constant GWAV_DURATION = 36 hours;
  uint256 public constant FLASHLOAN_DELTA = 120; // 120%

  IOptionMarketViewer public immutable optionMarketViewer;
  IOptionMarketWrapper public immutable optionMarketWrapper;
  ISynthetixAdapter public immutable synthetixAdapter;
  ILendingPool public immutable aaveLendingPool;
  ISynthetix public immutable synthetix;

  mapping(address => address) public gwavOracles;

  constructor(
    IOptionMarketViewer _optionMarketViewer,
    address _optionMarketWrapper,
    address _aaveLendingPool,
    address _synthetix
  ) Ownable() {
    optionMarketViewer = _optionMarketViewer;
    optionMarketWrapper = IOptionMarketWrapper(_optionMarketWrapper);
    aaveLendingPool = ILendingPool(_aaveLendingPool);
    synthetix = ISynthetix(_synthetix);
    synthetixAdapter = ISynthetixAdapter(_optionMarketViewer.synthetixAdapter());
  }

  function setGWAVOracle(address _optionMarket, address _gwavOracle) external onlyOwner {
    gwavOracles[_optionMarket] = _gwavOracle;
  }

  function getGWAVPrice(address optionMarket, uint256 strikeId) public view returns (uint256, uint256) {
    address gwavOracle = gwavOracles[optionMarket];
    require(gwavOracle != address(0), "unsupported option market");

    return IGWAVOracle(gwavOracle).optionPriceGWAV(strikeId, GWAV_DURATION);
  }

  /// @notice This function is to close lyra option position - called from PoolLogic contract
  /// @dev the original Lyra close/forceClose position functions doesn't accept recipient address
  ///      this function will accept a recipient address and withdraw the funds to the recipient directly.
  /// @param params the closePosition parameters
  /// @param recipient the recipient address for withdrawn funds
  function tryCloseAndForceClosePosition(IOptionMarketWrapper.OptionPositionParams memory params, address recipient)
    external
  {
    IOptionMarketViewer.OptionMarketAddresses memory c = optionMarketViewer.marketAddresses(
      address(params.optionMarket)
    );
    IOptionToken.OptionPosition memory position = c.optionToken.positions(params.positionId);

    if (
      params.optionType == IOptionMarket.OptionType.SHORT_CALL_BASE ||
      params.optionType == IOptionMarket.OptionType.SHORT_CALL_QUOTE ||
      params.optionType == IOptionMarket.OptionType.SHORT_PUT_QUOTE
    ) {
      // check minimum collateral amount after withdraw
      (uint256 strikePrice, uint256 expiry) = params.optionMarket.getStrikeAndExpiry(position.strikeId);
      uint256 spotPrice = synthetixAdapter.getSpotPriceForMarket(address(params.optionMarket));
      uint256 minCollateralAfterWithdraw = c.greekCache.getMinCollateral(
        params.optionType,
        strikePrice,
        expiry,
        spotPrice,
        position.amount.sub(params.amount)
      );

      // check if the position collateral is less than the minimum collateral amount
      // then it will close position fully and withdraw to the pool address directly
      if (params.setCollateralTo < minCollateralAfterWithdraw) {
        params.setCollateralTo = 0;
        params.amount = position.amount;
        recipient = msg.sender;
      }
    }

    c.optionToken.approve(address(optionMarketWrapper), params.positionId);
    if (params.optionType == IOptionMarket.OptionType.SHORT_CALL_BASE) {
      // to close SHORT_CALL_BASE options, it requires to provide option fees in quote asset.
      // 1. we flashloan quote asset from Aave
      // 2. close option position
      // 3. we get base asset once we close the option position.
      // 4. we swap base asset into quote asset to repay flahsloan amount + premium

      (uint256 callPrice, ) = getGWAVPrice(address(params.optionMarket), position.strikeId);
      uint256 amountToFlashloan = params.amount.mul(callPrice).div(1e18).mul(FLASHLOAN_DELTA).div(100);

      address[] memory borrowAssets = new address[](1);
      borrowAssets[0] = address(c.quoteAsset);
      uint256[] memory borrowAmounts = new uint256[](1);
      borrowAmounts[0] = amountToFlashloan;
      uint256[] memory modes = new uint256[](1);
      bytes memory flashloanParams = abi.encode(params);
      aaveLendingPool.flashLoan(address(this), borrowAssets, borrowAmounts, modes, address(this), flashloanParams, 196);
    } else {
      // solhint-disable-next-line no-empty-blocks
      try optionMarketWrapper.closePosition(params) {} catch {
        optionMarketWrapper.forceClosePosition(params);
      }
    }

    // transfer withdrawn assets to recipient
    c.quoteAsset.transfer(recipient, c.quoteAsset.balanceOf(address(this)));
    c.baseAsset.transfer(recipient, c.baseAsset.balanceOf(address(this)));

    // transfer position nft back to msg.sender
    if (c.optionToken.getPositionState(params.positionId) == IOptionToken.PositionState.ACTIVE) {
      c.optionToken.transferFrom(address(this), msg.sender, params.positionId);
    } else {
      address poolLogic = msg.sender;
      address factory = IPoolLogic(poolLogic).factory();
      address lyraOptionMarketWrapperContractGuard = IHasGuardInfo(factory).getContractGuard(
        address(optionMarketWrapper)
      );
      LyraOptionMarketWrapperContractGuard(lyraOptionMarketWrapperContractGuard).removeClosedPosition(
        poolLogic,
        address(params.optionMarket),
        params.positionId
      );
    }
  }

  /// @notice execute function of aave flash loan
  /// @dev This function is called after your contract has received the flash loaned amount
  /// @param assets the loaned assets
  /// @param amounts the loaned amounts per each asset
  /// @param premiums the additional owed amount per each asset
  /// @param originator the origin caller address of the flash loan
  /// @param params Variadic packed params to pass to the receiver as extra information
  function executeOperation(
    address[] memory assets,
    uint256[] memory amounts,
    uint256[] memory premiums,
    address originator,
    bytes memory params
  ) external returns (bool success) {
    require(msg.sender == address(aaveLendingPool) && originator == address(this), "invalid flashloan origin");
    require(assets.length == 1 && amounts.length == 1 && premiums.length == 1, "invalid length");

    IOptionMarketWrapper.OptionPositionParams memory optionParams = abi.decode(
      params,
      (IOptionMarketWrapper.OptionPositionParams)
    );
    IOptionMarketWrapper.OptionMarketContracts memory c = optionMarketWrapper.marketContracts(
      optionParams.optionMarket
    );

    require(assets[0] == address(c.quoteAsset), "invalid asset");

    // close option position
    c.quoteAsset.approve(address(optionMarketWrapper), amounts[0]);
    optionParams.inputAmount = amounts[0];
    // solhint-disable-next-line no-empty-blocks
    try optionMarketWrapper.closePosition(optionParams) {} catch {
      optionMarketWrapper.forceClosePosition(optionParams);
    }

    // swap base assets to quote assets
    uint256 baseAssetAmount = c.baseAsset.balanceOf(address(this));
    bytes32 synthQuoteKey = synthetixAdapter.quoteKey(address(optionParams.optionMarket));
    bytes32 synthBaseKey = synthetixAdapter.baseKey(address(optionParams.optionMarket));
    c.baseAsset.approve(address(synthetix), baseAssetAmount);
    synthetix.exchange(synthBaseKey, baseAssetAmount, synthQuoteKey);

    // payback amounts + premiums
    c.quoteAsset.approve(address(aaveLendingPool), amounts[0].add(premiums[0]));
    return true;
  }
}
