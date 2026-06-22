// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.19;

// Core
import {QuarantineList} from "./core/QuarantineList.sol";

// Structs
import {UserRequest, RequestData, ProcessParam, AssetInfo} from "./core/Structs.sol";

// Utils
import {Ownable} from "./utils/Ownable.sol";
import {PercentageMath} from "./utils/PercentageMath.sol";
import {SafeERC20} from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";

// Interfaces
import {IERC20} from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import {IFyde} from "./interfaces/IFyde.sol";
import {IGovernanceModule} from "./interfaces/IGovernanceModule.sol";
import {IOracle} from "./interfaces/IOracle.sol";
import {ITaxModule} from "./interfaces/ITaxModule.sol";

///@title RelayerV2
///@notice The relayer is the entry point contract for users to interact with the protocol.
///        The relayer is monitored by an off-chain keeper that will update the protocol AUM.

contract RelayerV2 is QuarantineList {
  using SafeERC20 for IERC20;
  /*//////////////////////////////////////////////////////////////
                                 STORAGE
    //////////////////////////////////////////////////////////////*/

  ///@notice Fyde contract
  IFyde public fyde;

  ///@notice OracleModule contract
  IOracle public oracleModule;

  //@notice GovernanceModule contract
  IGovernanceModule public immutable GOVERNANCE_MODULE;

  //@notice calculates the tax for protocol actions
  ITaxModule public taxModule;

  ///@dev Only used for tracking events offchain
  uint32 public nonce;

  ///@notice Threshold of deviation for updating AUM
  uint16 public deviationThreshold;

  ///@notice State of the protocol
  bool public paused;

  //@notice Swap state
  bool public swapPaused;

  /*//////////////////////////////////////////////////////////////
                                 ERROR
    //////////////////////////////////////////////////////////////*/

  error ValueOutOfBounds();
  error ActionPaused();
  error SlippageExceed();
  error SwapDisabled(address asset);
  error AssetNotAllowedInGovernancePool(address asset);
  error DuplicatesAssets();

  /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/

  event Pause(uint256 timestamp);
  event Unpause(uint256 timestamp);
  event Deposit(uint32 requestId, RequestData request);
  event Withdraw(uint32 requestId, RequestData request);
  event Swap(uint32 requestId, RequestData request);

  /*//////////////////////////////////////////////////////////////
                            CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

  constructor(address _oracleModule, address _govModule, uint8 _deviationThreshold)
    Ownable(msg.sender)
  {
    oracleModule = IOracle(_oracleModule);
    GOVERNANCE_MODULE = IGovernanceModule(_govModule);
    updateDeviationThreshold(_deviationThreshold);
  }

  /*//////////////////////////////////////////////////////////////
                                GUARD
    //////////////////////////////////////////////////////////////*/

  ///@notice Pause the protocol
  function pauseProtocol() public onlyGuard {
    paused = true;
    emit Pause(block.timestamp);
  }

  ///@notice Pause the swaps
  function pauseSwap() external onlyGuard {
    swapPaused = true;
    emit Pause(block.timestamp);
  }

  /*//////////////////////////////////////////////////////////////
                                 OWNER
    //////////////////////////////////////////////////////////////*/

  ///@notice sets the addres of fyde contract
  ///@param _fyde address of fyde
  function setFyde(address _fyde) external onlyOwner {
    fyde = IFyde(_fyde);
  }

  ///@notice Set the oracle module
  function setOracleModule(address _oracleModule) external onlyOwner {
    oracleModule = IOracle(_oracleModule);
  }

  ///@notice Set the tax module
  function setTaxModule(address _taxModule) external onlyOwner {
    taxModule = ITaxModule(_taxModule);
  }

  ///@notice Change the deviation threshold
  ///@dev 50 = 0.5 % of deviation
  function updateDeviationThreshold(uint16 _threshold) public onlyOwner {
    // We bound the threshold between 0.1 % to 10%
    if (_threshold < 10 || _threshold > 1000) revert ValueOutOfBounds();
    deviationThreshold = _threshold;
  }

  ///@notice Approve Fyde to transfer token from relayer, should be called once per asset
  function approveFyde(address[] calldata _assets) external onlyOwner {
    for (uint256 i; i < _assets.length; ++i) {
      IERC20(_assets[i]).safeApprove(address(fyde), type(uint256).max);
    }
  }

  ///@notice Collect and send token fees (from tax fees) to an external address
  ///@param _asset Address to send fees to
  ///@param _recipient Address to send fees to
  ///@param _amount Amount to send
  function collectFees(address _asset, address _recipient, uint256 _amount) external onlyOwner {
    IERC20(_asset).safeTransfer(_recipient, _amount);
  }

  ///@notice Unpause the protocol
  function unpauseProtocol() external onlyOwner {
    paused = false;
    emit Unpause(block.timestamp);
  }

  ///@notice Unpause the swaps
  function unpauseSwap() external onlyOwner {
    swapPaused = false;
    emit Unpause(block.timestamp);
  }

  /*//////////////////////////////////////////////////////////////
                            EXT USER ENTRY POINT
    //////////////////////////////////////////////////////////////*/

  ///@notice Entry function for depositing, can be a standard deposit or a governance
  /// deposit
  ///@param _userRequest struct containing data
  ///@param _keepGovRights If true make a governance
  ///@param _minTRSYExpected Slippage parameter ensuring minimum amout of TRSY to be received
  function deposit(
    UserRequest[] calldata _userRequest,
    bool _keepGovRights,
    uint256 _minTRSYExpected
  ) external whenNotPaused onlyUser {
    address[] memory assetIn = new address[](_userRequest.length);
    uint256[] memory amountIn = new uint256[](_userRequest.length);

    for (uint256 i; i < _userRequest.length; ++i) {
      // Unpack data
      assetIn[i] = _userRequest[i].asset;
      amountIn[i] = _userRequest[i].amount;
    }

    _checkForDuplicates(assetIn);

    if (_keepGovRights) _checkIsAllowedInGov(assetIn);

    RequestData memory req = RequestData({
      id: nonce,
      requestor: address(this),
      assetIn: assetIn,
      amountIn: amountIn,
      assetOut: new address[](0),
      amountOut: new uint256[](0),
      keepGovRights: _keepGovRights,
      slippageChecker: _minTRSYExpected
    });

    nonce++;

    uint256 currentAUM = fyde.getProtocolAUM();

    // Cache prices in oracle (gas savings when fyde reads prices)
    _enableOracleCache(assetIn);

    // get params for tax calculation from tax module
    (ProcessParam[] memory processParam, uint256 sharesToMint,,) =
      taxModule.getProcessParamDeposit(req, currentAUM);

    // Slippage checker
    if (req.slippageChecker > sharesToMint) revert SlippageExceed();

    // Transfer assets to Relayer
    for (uint256 i; i < req.assetIn.length; ++i) {
      IERC20(req.assetIn[i]).safeTransferFrom(msg.sender, address(this), req.amountIn[i]);
    }

    // Deposit
    fyde.processDeposit(currentAUM, req);

    if (_keepGovRights) {
      for (uint256 i; i < processParam.length; ++i) {
        // send staked trsy to the user
        address sTrsy = GOVERNANCE_MODULE.assetToStrsy(req.assetIn[i]);
        uint256 strsyBal = IERC20(sTrsy).balanceOf(address(this));
        uint256 toTransfer =
          strsyBal >= processParam[i].sharesAfterTax ? processParam[i].sharesAfterTax : strsyBal;
        IERC20(sTrsy).transfer(msg.sender, toTransfer);

        // unstake tax amount to get standard trsy
        uint256 taxTrsy = strsyBal - toTransfer;
        if (taxTrsy != 0) GOVERNANCE_MODULE.unstakeGov(taxTrsy, req.assetIn[i]);
      }
    } else {
      // send trsy to user
      IERC20(address(fyde)).transfer(msg.sender, sharesToMint);
    }

    _disableOracleCache();

    emit Deposit(req.id, req);
  }

  ///@notice Entry function for withdrawing
  ///@param _userRequest struct containing data
  ///@param _maxTRSYToPay Slippage parameter ensure maximum amout of TRSY willing to pay
  function withdraw(UserRequest[] calldata _userRequest, uint256 _maxTRSYToPay)
    external
    whenNotPaused
    onlyUser
  {
    address[] memory assetOut = new address[](_userRequest.length);
    uint256[] memory amountOut = new uint256[](_userRequest.length);

    for (uint256 i; i < _userRequest.length; i++) {
      assetOut[i] = _userRequest[i].asset;
      amountOut[i] = _userRequest[i].amount;
    }

    _checkForDuplicates(assetOut);

    RequestData memory req = RequestData({
      id: nonce,
      requestor: address(this),
      assetIn: new address[](0),
      amountIn: new uint256[](0),
      assetOut: assetOut,
      amountOut: amountOut,
      keepGovRights: false,
      slippageChecker: _maxTRSYToPay
    });

    nonce++;

    uint256 currentAUM = fyde.getProtocolAUM();

    _enableOracleCache(assetOut);

    // get params for tax calculation from tax module
    (, uint256 totalSharesToBurn,,,) = taxModule.getProcessParamWithdraw(req, currentAUM);

    if (totalSharesToBurn > req.slippageChecker) revert SlippageExceed();

    // Transfer TRSY to Relayer
    IERC20(address(fyde)).transferFrom(msg.sender, address(this), totalSharesToBurn);

    // Withdraw
    fyde.processWithdraw(currentAUM, req);

    // Transfer assets to user
    for (uint256 i; i < req.assetOut.length; ++i) {
      IERC20(req.assetOut[i]).safeTransfer(msg.sender, req.amountOut[i]);
    }

    _disableOracleCache();

    emit Withdraw(req.id, req);
  }

  ///@notice Function used by user to make a (single-token) withdrawal from their governance proxy
  ///@param _userRequest struct containing data
  ///@param _user address of user who makes the withdraw
  ///@param _maxTRSYToPay maximum amout of stTRSY willing to pay, otherwise withdraw reverts
  ///@dev owner of fyde can force withdraw for other users
  function governanceWithdraw(UserRequest memory _userRequest, address _user, uint256 _maxTRSYToPay)
    external
    whenNotPaused
    onlyUser
  {
    if (msg.sender != _user && msg.sender != owner) revert Unauthorized();

    address[] memory assetOut = new address[](1);
    uint256[] memory amountOut = new uint256[](1);

    assetOut[0] = _userRequest.asset;
    amountOut[0] = _userRequest.amount;

    // for withdraw, assetIn and amountIn are set to empty array
    RequestData memory request = RequestData({
      id: nonce,
      requestor: _user,
      assetIn: new address[](0),
      amountIn: new uint256[](0),
      assetOut: assetOut,
      amountOut: amountOut,
      keepGovRights: true,
      slippageChecker: _maxTRSYToPay
    });

    nonce++;

    uint256 currentAUM = fyde.getProtocolAUM();

    fyde.processWithdraw(currentAUM, request);
    emit Withdraw(request.id, request);
  }

  /*//////////////////////////////////////////////////////////////
                               SWAP
    //////////////////////////////////////////////////////////////*/

  function swap(address _assetIn, uint256 _amountIn, address _assetOut, uint256 _minAmountOut)
    external
    whenSwapNotPaused
    onlySwapper
  {
    address[] memory assetIn = new address[](1);
    uint256[] memory amountIn = new uint256[](1);
    address[] memory assetOut = new address[](1);
    uint256[] memory amountOut = new uint256[](1);

    assetIn[0] = _assetIn;
    amountIn[0] = _amountIn;
    assetOut[0] = _assetOut;

    RequestData memory req = RequestData({
      id: nonce,
      requestor: address(this),
      assetIn: assetIn,
      amountIn: amountIn,
      assetOut: assetOut,
      amountOut: amountOut,
      keepGovRights: false,
      slippageChecker: _minAmountOut
    });

    nonce++;

    uint256 currentAUM = fyde.getProtocolAUM();

    address[] memory assetsSwap = new address[](2);
    assetsSwap[0] = _assetIn;
    assetsSwap[1] = _assetOut;

    _enableOracleCache(assetsSwap);

    // get params for tax calculation from taxModule
    (uint256 amountOutTaxed,) =
      taxModule.getSwapAmountOut(req.assetIn[0], req.amountIn[0], req.assetOut[0], currentAUM);

    // Transfer asset to Relayer
    IERC20(req.assetIn[0]).safeTransferFrom(msg.sender, address(this), req.amountIn[0]);

    fyde.processSwap(currentAUM, req);

    uint256 tokenBalance = IERC20(assetOut[0]).balanceOf(address(this));

    amountOutTaxed = amountOutTaxed > tokenBalance ? tokenBalance : amountOutTaxed;
    if (amountOutTaxed < req.slippageChecker) revert SlippageExceed();

    // Transfer assets to swapper
    IERC20(req.assetOut[0]).safeTransfer(msg.sender, amountOutTaxed);

    emit Swap(req.id, req);

    // deposit tax to receive trsy
    amountIn[0] = tokenBalance - amountOutTaxed;
    if (amountIn[0] > 0) {
      req = RequestData({
        id: nonce,
        requestor: address(this),
        assetIn: assetOut,
        amountIn: amountIn,
        assetOut: new address[](0),
        amountOut: new uint256[](0),
        keepGovRights: false,
        slippageChecker: 0
      });

      nonce++;

      currentAUM = fyde.getProtocolAUM();
      fyde.processDeposit(currentAUM, req);
    }

    _disableOracleCache();
  }

  /*//////////////////////////////////////////////////////////////
                            Keeper FUNCTIONS
    //////////////////////////////////////////////////////////////*/

  ///@notice Offchain checker for AUM deviation
  function checkUpkeep(bytes calldata checkData)
    external
    view
    returns (bool upkeepNeeded, bytes memory performData)
  {
    (uint256 updateFactor, uint256 pauseFactor, bool isChainlink) =
      abi.decode(checkData, (uint256, uint256, bool));

    uint256 aum = fyde.getProtocolAUM();
    uint256 nAum = fyde.computeProtocolAUM();

    // AUM in range of deviation threshold times update factor do nothing
    if (PercentageMath._isInRange(aum, nAum, updateFactor * deviationThreshold / 100)) {
      return (false, "AUM is in range");
    }

    // if stored AUM exceeds the maximum deviation threshold by the pause factor
    // something is wrong and we stop the protocol
    if (!PercentageMath._isInRange(aum, nAum, pauseFactor * deviationThreshold / 100) && !paused) {
      if (isChainlink) return (true, abi.encode(false, 0));
      return (true, abi.encodeCall(this.performUpkeep, (abi.encode(false, 0))));
    }

    // if not in range and not outside the wider range, update AUM
    int256 diffAUM = int256(nAum) - int256(aum);
    if (isChainlink) return (true, abi.encode(true, diffAUM));
    return (true, abi.encodeCall(this.performUpkeep, (abi.encode(true, diffAUM))));
  }

  function performUpkeep(bytes calldata performData) external {
    (bool updateAum, int256 diffAUM) = abi.decode(performData, (bool, int256));

    if (!updateAum) {
      pauseProtocol();
    } else {
      uint256 nAum = uint256(int256(fyde.getProtocolAUM()) + diffAUM);
      updateProtocolAUM(nAum);
    }
  }

  ///@notice Update the protocol AUM, called by Keeper
  function updateProtocolAUM(uint256 nAum) public onlyKeeper {
    fyde.updateProtocolAUM(nAum);
  }
  /*//////////////////////////////////////////////////////////////
                                 INTERNAL
    //////////////////////////////////////////////////////////////*/

  function _enableOracleCache(address[] memory assets) internal {
    AssetInfo[] memory assetInfos = new AssetInfo[](assets.length);
    for (uint256 i; i < assets.length; ++i) {
      assetInfos[i] = fyde.assetInfo(assets[i]);
    }
    oracleModule.useCache(assets, assetInfos);
  }

  function _disableOracleCache() internal {
    oracleModule.disableCache();
  }

  function _checkIsAllowedInGov(address[] memory _assets) internal view {
    address notAllowedInGovAsset = GOVERNANCE_MODULE.isAnyNotOnGovWhitelist(_assets);
    if (notAllowedInGovAsset != address(0x0)) {
      revert AssetNotAllowedInGovernancePool(notAllowedInGovAsset);
    }
  }

  function _checkForDuplicates(address[] memory _assetList) internal pure {
    for (uint256 idx; idx < _assetList.length - 1; idx++) {
      for (uint256 idx2 = idx + 1; idx2 < _assetList.length; idx2++) {
        if (_assetList[idx] == _assetList[idx2]) revert DuplicatesAssets();
      }
    }
  }

  function _uint2str(uint256 _i) internal pure returns (string memory) {
    if (_i == 0) return "0";
    uint256 j = _i;
    uint256 len;
    while (j != 0) {
      len++;
      j /= 10;
    }
    bytes memory bstr = new bytes(len);
    uint256 k = len;
    while (_i != 0) {
      k = k - 1;
      uint8 temp = (48 + uint8(_i - (_i / 10) * 10));
      bytes1 b1 = bytes1(temp);
      bstr[k] = b1;
      _i /= 10;
    }
    return string(bstr);
  }

  modifier whenNotPaused() {
    if (paused) revert ActionPaused();
    _;
  }

  modifier whenSwapNotPaused() {
    if (swapPaused) revert ActionPaused();
    _;
  }
}
