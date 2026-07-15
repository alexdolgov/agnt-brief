// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.19;

import {ProcessParam, RequestData, AssetInfo} from "./Structs.sol";
import {MathUtil} from "../utils/MathUtil.sol";
import "synthetix-v3/utils/core-contracts/contracts/utils/SafeCast.sol";
import {IFyde} from "src/interfaces/IFyde.sol";
import {Ownable} from "src/utils/Ownable.sol";

///@title Tax contract
///@notice Handle tax logic, for either a deposit or withdraw compute if the action is unabalacing
/// the protocol
///        if this is the case, the protocol will compute a tax applied on deposit or withdraw by
/// reducing the number of shares to mint
///        or by increasing the number of shares to burn. This tax is then minted to FYDE contract.
/// The main logic is that for each action, we compute a taxable amount which is the amount that
/// unbalance the protocol for a given deposit or withdraw,
/// then we apply the tax on this taxable amount.
/// For the swap the logic is the same, we compute the tax and incentive for assetIn and that give
/// the value of assetOut,
/// for this value we compute the tax and incentive for assetOut.
/// SwapRate can be greater for assetOut in case there is no tax and some incentives, the same if no
/// tax no incentive, or lower if there is tax and no incentive.

// 1e20 == 100%,
struct TaxParams {
  uint128 targetConcDeposit;
  uint128 targetConcWithdraw;
}

struct SwapData {
  uint256 usdValIn;
  uint256 usdQuoteIn;
  uint256 usdQuoteOut;
  uint72 targetIn;
  uint72 targetOut;
  int72 incentiveIn;
  int72 incentiveOut;
  uint256 usdAmountOut;
}

contract TaxModule is Ownable {
  using SafeCastU256 for uint256;
  using SafeCastI256 for int256;

  error AssetPriceNotAvailable();
  error MaxFlatTaxExceeded();

  uint256 constant PREC = 1e18;

  IFyde public immutable FYDE;

  // 100% = 1e9
  uint32 public taxFactorDeposit = 1e9;
  uint32 public taxFactorWithdraw = 1e9;
  uint32 public flatTaxRateDeposit;
  uint32 public flatTaxRateWithdraw;
  uint32 public flatTaxRateSwap;

  mapping(address => TaxParams) public taxParams;

  mapping(address token => address yieldToken) public tokenToYieldToken;

  address public yieldManager;

  constructor(address _fyde) Ownable(msg.sender) {
    FYDE = IFyde(_fyde);
  }

  function setTaxFactorDeposit(uint32 _taxfactor) external onlyOwner {
    taxFactorDeposit = _taxfactor;
  }

  function setTaxFactorWithdraw(uint32 _taxfactor) external onlyOwner {
    taxFactorWithdraw = _taxfactor;
  }

  function setFlatTaxRate(uint32 _deposit, uint32 _withdraw, uint32 _swap) external onlyOwner {
    if (_deposit > 1e9 || _withdraw > 1e9 || _swap > 1e9) revert MaxFlatTaxExceeded();
    flatTaxRateDeposit = _deposit;
    flatTaxRateWithdraw = _withdraw;
    flatTaxRateSwap = _swap;
  }

  function setTaxParams(address[] calldata _assets, TaxParams[] calldata _taxParams)
    external
    onlyOwner
  {
    for (uint256 i; i < _assets.length; ++i) {
      taxParams[_assets[i]] = _taxParams[i];
    }
  }

  function setYieldManager(address _yieldManager) external onlyOwner {
    yieldManager = _yieldManager;
  }

  function registerYieldToken(address _baseToken, address _yieldToken) external {
    if (msg.sender != yieldManager) revert Unauthorized();
    tokenToYieldToken[_baseToken] = _yieldToken;
    // set taxparams to nonzero for taxfree deposit
    taxParams[_yieldToken] = TaxParams(1, 1);
  }

  /*//////////////////////////////////////////////////////////////
                                 MAIN
    //////////////////////////////////////////////////////////////*/

  function getProcessParamDeposit(RequestData memory _req, uint256 _protocolAUM)
    external
    view
    returns (
      ProcessParam[] memory processParam,
      uint256 sharesToMint,
      uint256 taxInTRSY,
      uint256 totalUsdDeposit
    )
  {
    uint256 trsySupply = FYDE.totalSupply();

    (processParam, totalUsdDeposit) = _initializeProcessParam(_req, _protocolAUM, trsySupply);

    for (uint256 i; i < processParam.length; i++) {
      // Get the TaxInUSD
      processParam[i] = _getDepositTax(
        processParam[i],
        _protocolAUM,
        totalUsdDeposit,
        uint256(taxFactorDeposit) * 1e11,
        flatTaxRateDeposit
      );

      // Apply tax to the deposit
      processParam[i].sharesAfterTax = _convertToShares(
        processParam[i].usdValue - processParam[i].taxInUSD, _protocolAUM, trsySupply
      );
      sharesToMint += processParam[i].sharesAfterTax;
      taxInTRSY += processParam[i].sharesBeforeTax - processParam[i].sharesAfterTax;
    }

    return (processParam, sharesToMint, taxInTRSY, totalUsdDeposit);
  }

  function getProcessParamWithdraw(RequestData calldata _req, uint256 _protocolAUM)
    public
    view
    returns (
      ProcessParam[] memory processParam,
      uint256 totalSharesToBurn,
      uint256 sharesToBurnBeforeTax,
      uint256 taxInTRSY,
      uint256 totalUsdWithdraw
    )
  {
    uint256 trsySupply = FYDE.totalSupply();

    (processParam, totalUsdWithdraw) = _initializeProcessParam(_req, _protocolAUM, trsySupply);

    for (uint256 i; i < processParam.length; i++) {
      // Get the TaxInUSD
      processParam[i] = _getWithdrawTax(
        processParam[i],
        _protocolAUM,
        totalUsdWithdraw,
        uint256(taxFactorWithdraw) * 1e11,
        flatTaxRateWithdraw
      );

      // Apply tax to the withdraw
      taxInTRSY += _convertToShares(processParam[i].taxInUSD, _protocolAUM, trsySupply);
    }

    sharesToBurnBeforeTax = _convertToShares(totalUsdWithdraw, _protocolAUM, trsySupply);
    totalSharesToBurn = sharesToBurnBeforeTax + taxInTRSY;
  }

  ///@notice Return the amountOut for a swap accounting for tax and incentive
  ///@param _assetIn asset address to swap
  ///@param _amountIn amount of asset to swap
  ///@param _assetOut asset address to receive
  ///@param _protocolAUM AUM given by keeper
  function getSwapAmountOut(
    address _assetIn,
    uint256 _amountIn,
    address _assetOut,
    uint256 _protocolAUM
  ) public view returns (uint256, int256) {
    // prevent stack too deep struct
    SwapData memory sd;
    (sd.usdValIn, sd.usdQuoteIn) = _getUsdValue(_assetIn, _amountIn);
    (, sd.usdQuoteOut) = _getUsdValue(_assetOut, PREC);
    if (sd.usdValIn == 0 || sd.usdQuoteOut == 0) return (0, int256(0));

    (sd.incentiveIn, sd.targetIn) = _getIncentiveFactorAndTargetConc(_assetIn);

    ProcessParam memory processParamIn = ProcessParam({
      targetConc: sd.targetIn,
      currentConc: _getCurrentConcentration(_assetIn, _protocolAUM, sd.usdQuoteIn),
      usdValue: sd.usdValIn,
      sharesBeforeTax: 0,
      taxableAmount: 0,
      taxInUSD: 0,
      sharesAfterTax: 0
    });

    (sd.incentiveOut, sd.targetOut) = _getIncentiveFactorAndTargetConc(_assetOut);

    ProcessParam memory processParamOut = ProcessParam({
      targetConc: sd.targetOut,
      currentConc: _getCurrentConcentration(_assetOut, _protocolAUM, sd.usdQuoteOut),
      usdValue: 0,
      sharesBeforeTax: 0,
      taxableAmount: 0,
      taxInUSD: 0,
      sharesAfterTax: 0
    });

    sd.usdAmountOut =
      _getSwapRate(processParamIn, processParamOut, sd.incentiveIn, sd.incentiveOut, _protocolAUM);

    return (
      PREC * sd.usdAmountOut / sd.usdQuoteOut,
      int256(processParamIn.usdValue) - int256(sd.usdAmountOut)
    );
  }

  function _getDepositTax(
    ProcessParam memory processParam,
    uint256 protocolAUM,
    uint256 totalUsdDeposit,
    uint256 _taxfactor,
    uint256 _flatTaxRate
  ) internal pure returns (ProcessParam memory) {
    if (processParam.targetConc == 0) {
      processParam.taxInUSD = processParam.usdValue;
      return processParam;
    }
    if (_taxfactor != 0) {
      processParam = _computeDepositTaxableAmount(processParam, protocolAUM, totalUsdDeposit);
    }

    if (processParam.taxableAmount != 0) {
      processParam = _computeDepositTaxInUSD(processParam, protocolAUM, totalUsdDeposit, _taxfactor);
    }

    return _addFlatTaxInUSD(processParam, _flatTaxRate);
  }

  function _getWithdrawTax(
    ProcessParam memory processParam,
    uint256 protocolAUM,
    uint256 totalUsdWithdraw,
    uint256 _taxfactor,
    uint256 _flatTaxRate
  ) internal pure returns (ProcessParam memory) {
    if (_taxfactor != 0) {
      processParam = _computeWithdrawTaxableAmount(processParam, protocolAUM, totalUsdWithdraw);
    }

    if (processParam.taxableAmount != 0) {
      processParam =
        _computeWithdrawTaxInUSD(processParam, protocolAUM, totalUsdWithdraw, _taxfactor);
    }

    return _addFlatTaxInUSD(processParam, _flatTaxRate);
  }

  function _getSwapRate(
    ProcessParam memory processParamIn,
    ProcessParam memory processParamOut,
    int72 incentiveFactorIn,
    int72 incentiveFactorOut,
    uint256 protocolAUM
  ) internal view returns (uint256) {
    // Compute tax on deposit
    processParamIn =
      _getDepositTax(processParamIn, protocolAUM, 0, uint256(taxFactorDeposit) * 1e11, 0);

    int256 valIn = incentiveFactorIn
      * int256(processParamIn.usdValue - processParamIn.taxableAmount) / int256(1e20);

    // usdValue adjusted with potential tax and incentive
    uint256 withdrawValOut = valIn >= 0
      ? processParamIn.usdValue - processParamIn.taxInUSD + valIn.toUint()
      : processParamIn.usdValue - processParamIn.taxInUSD - (-1 * valIn).toUint();

    processParamOut.usdValue = withdrawValOut;
    processParamOut = _getWithdrawTax(
      processParamOut, protocolAUM, 0, uint256(taxFactorWithdraw) * 1e11, flatTaxRateSwap
    );

    // usdValueOut adjusted with potential tax and incentive
    int256 valOut =
      incentiveFactorOut * int256(withdrawValOut - processParamOut.taxableAmount) / 1e20;

    uint256 usdValOut = valOut >= 0
      ? withdrawValOut - processParamOut.taxInUSD + valOut.toUint()
      : withdrawValOut - processParamOut.taxInUSD - (-1 * valOut).toUint();

    return usdValOut;
  }

  /*//////////////////////////////////////////////////////////////
                                 DEPOSIT
    //////////////////////////////////////////////////////////////*/
  function _computeDepositTaxableAmount(
    ProcessParam memory processParam,
    uint256 protocolAUM,
    uint256 totalUsdDeposit
  ) internal pure returns (ProcessParam memory) {
    int256 deltaConc = protocolAUM.toInt()
      * (processParam.currentConc.toInt() - processParam.targetConc.toInt()) / 1e20;
    int256 targetDeposit = totalUsdDeposit != 0
      ? processParam.targetConc.toInt() * totalUsdDeposit.toInt() / 1e20
      : int256(0);
    int256 tax = processParam.usdValue.toInt() + deltaConc - targetDeposit;
    processParam.taxableAmount =
      MathUtil.min(processParam.usdValue.toInt(), MathUtil.max(tax, int256(0))).toUint();
    return processParam;
  }

  function _computeDepositTaxInUSD(
    ProcessParam memory processParam,
    uint256 protocolAUM,
    uint256 totalUsdDeposit,
    uint256 _taxfactor
  ) internal pure returns (ProcessParam memory) {
    uint256 numerator = (protocolAUM * processParam.currentConc / 1e20) + processParam.usdValue;
    uint256 denominator = (protocolAUM + totalUsdDeposit) * processParam.targetConc / 1e20;
    uint256 eq = (PREC * numerator / denominator) - PREC;
    uint256 tmpRes = MathUtil.min(eq, PREC);
    uint256 taxPerc = _taxfactor * tmpRes / 1e20; // 1e20 for applying expressing tax as a
    // percentage
    processParam.taxInUSD = processParam.taxableAmount * taxPerc / PREC;
    return processParam;
  }

  function _addFlatTaxInUSD(ProcessParam memory processParam, uint256 _flatTaxRate)
    internal
    pure
    returns (ProcessParam memory)
  {
    processParam.taxInUSD += (processParam.usdValue - processParam.taxInUSD) * _flatTaxRate / 1e9;
    return processParam;
  }

  /*//////////////////////////////////////////////////////////////
                                 WITHDRAW
    //////////////////////////////////////////////////////////////*/
  function _computeWithdrawTaxableAmount(
    ProcessParam memory processParam,
    uint256 protocolAUM,
    uint256 totalUsdWithdraw
  ) internal pure returns (ProcessParam memory) {
    int256 deltaConc = protocolAUM.toInt()
      * (processParam.currentConc.toInt() - processParam.targetConc.toInt()) / 1e20;
    int256 targetDeposit = processParam.targetConc.toInt() * totalUsdWithdraw.toInt() / 1e20;
    int256 tax = processParam.usdValue.toInt() - deltaConc - targetDeposit;
    processParam.taxableAmount =
      MathUtil.min(processParam.usdValue.toInt(), MathUtil.max(tax, int256(0))).toUint();
    return processParam;
  }

  function _computeWithdrawTaxInUSD(
    ProcessParam memory processParam,
    uint256 protocolAUM,
    uint256 totalUsdWithdraw,
    uint256 _taxfactor
  ) internal pure returns (ProcessParam memory) {
    int256 numerator =
      protocolAUM.toInt() * processParam.currentConc.toInt() / 1e20 - processParam.usdValue.toInt();
    int256 denominator =
      processParam.targetConc.toInt() * (protocolAUM.toInt() - totalUsdWithdraw.toInt()) / 1e20;
    int256 tmpRes = 1e18 - (1e18 * numerator / denominator);
    uint256 tmpRes2 = MathUtil.min(tmpRes.toUint(), PREC);
    uint256 taxPerc = _taxfactor * tmpRes2 / 1e20; // 1e20 for applying expressing tax as a
    // percentage
    processParam.taxInUSD = processParam.taxableAmount * taxPerc / PREC;
    return processParam;
  }

  ///@notice Convert the value of deposit into share of the protocol
  ///@param _usdValue usd value of the deposit
  ///@param _usdAUM AUM of the protocol in USD
  ///@return TSRY share for an USD deposit
  function _convertToShares(uint256 _usdValue, uint256 _usdAUM, uint256 totalTrsySupply)
    internal
    pure
    returns (uint256)
  {
    return totalTrsySupply == 0 ? _usdValue : (_usdValue * totalTrsySupply) / _usdAUM;
  }

  function _getCurrentConcentration(address _asset, uint256 _protocolAUM, uint256 _usdQuote)
    internal
    view
    returns (uint256)
  {
    address yToken = tokenToYieldToken[_asset];
    uint256 yTokenAmount = yToken == address(0x0) ? 0 : FYDE.totalAssetAccounting(yToken);
    return _protocolAUM == 0
      ? 0
      : (1e20 * (FYDE.totalAssetAccounting(_asset) + yTokenAmount) / _protocolAUM * _usdQuote / PREC);
  }

  function _getTargetConcentrationDeposit(address _asset) internal view returns (uint256) {
    return uint256(taxParams[_asset].targetConcDeposit);
  }

  function _getTargetConcentrationWithdraw(address _asset) internal view returns (uint256) {
    return uint256(taxParams[_asset].targetConcWithdraw);
  }

  function _getIncentiveFactorAndTargetConc(address _asset) internal view returns (int72, uint72) {
    AssetInfo memory assetInfo = FYDE.assetInfo(_asset);
    return (assetInfo.incentiveFactor, assetInfo.targetConcentration);
  }

  function _getUsdValue(address _asset, uint256 _amount) internal view returns (uint256, uint256) {
    uint256 usdQuote = FYDE.getQuote(_asset, PREC);
    uint256 usdVal = _amount * usdQuote / PREC;
    return (usdVal, usdQuote);
  }

  function _initializeProcessParam(
    RequestData memory _req,
    uint256 _protocolAUM,
    uint256 _trsySupply
  ) internal view returns (ProcessParam[] memory processParam, uint256 totalUsdValue) {
    address[] memory assets = _req.assetIn.length != 0 ? _req.assetIn : _req.assetOut;
    uint256[] memory amounts = _req.amountIn.length != 0 ? _req.amountIn : _req.amountOut;

    processParam = new ProcessParam[](assets.length);

    for (uint256 i; i < processParam.length; i++) {
      (uint256 usdVal, uint256 usdQuote) = _getUsdValue(assets[i], amounts[i]);

      totalUsdValue += usdVal;

      uint256 targetConc = _req.assetIn.length != 0
        ? _getTargetConcentrationDeposit(assets[i])
        : _getTargetConcentrationWithdraw(assets[i]);

      uint256 sharesBeforeTax =
        _req.assetIn.length != 0 ? _convertToShares(usdVal, _protocolAUM, _trsySupply) : 0;

      processParam[i] = ProcessParam({
        targetConc: targetConc,
        currentConc: _getCurrentConcentration(assets[i], _protocolAUM, usdQuote),
        usdValue: usdVal,
        sharesBeforeTax: sharesBeforeTax,
        taxableAmount: 0,
        taxInUSD: 0,
        sharesAfterTax: 0
      });
    }
  }
}
