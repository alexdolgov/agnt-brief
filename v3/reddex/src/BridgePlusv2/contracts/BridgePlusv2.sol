// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

abstract contract Context {
  function _msgSender() internal view virtual returns (address) {
    return msg.sender;
  }
  function _msgData() internal view virtual returns (bytes calldata) {
    return msg.data;
  }
}

abstract contract Ownable is Context {
  address private _owner;

  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

  constructor() {
    _transferOwnership(_msgSender());
  }

  modifier onlyOwner() {
    _checkOwner();
    _;
  }

  function owner() public view virtual returns (address) {
    return _owner;
  }

  function _checkOwner() internal view virtual {
    require(owner() == _msgSender(), "Ownable: caller is not the owner");
  }

  function renounceOwnership() public virtual onlyOwner {
    _transferOwnership(address(0));
  }

  function transferOwnership(address newOwner) public virtual onlyOwner {
    require(newOwner != address(0), "Ownable: new owner is the zero address");
    _transferOwnership(newOwner);
  }

  function _transferOwnership(address newOwner) internal virtual {
    address oldOwner = _owner;
    _owner = newOwner;
    emit OwnershipTransferred(oldOwner, newOwner);
  }
}

interface IERC20 {
  event Transfer(address indexed from, address indexed to, uint256 value);
  event Approval(address indexed owner, address indexed spender, uint256 value);

  function totalSupply() external view returns (uint256);
  function balanceOf(address account) external view returns (uint256);
  function transfer(address to, uint256 amount) external returns (bool);
  function allowance(address owner, address spender) external view returns (uint256);
  function approve(address spender, uint256 amount) external returns (bool);
  function transferFrom(
    address from,
    address to,
    uint256 amount
  ) external returns (bool);
}

interface IWETH is IERC20 {
  function deposit() external payable;
  function withdraw(uint amount) external;
}

interface IERC20Permit {
  function permit(
    address owner,
    address spender,
    uint256 value,
    uint256 deadline,
    uint8 v,
    bytes32 r,
    bytes32 s
  ) external;
  function nonces(address owner) external view returns (uint256);
  function DOMAIN_SEPARATOR() external view returns (bytes32);
}

library Address {
  function isContract(address account) internal view returns (bool) {
    return account.code.length > 0;
  }

  function sendValue(address payable recipient, uint256 amount) internal {
    require(address(this).balance >= amount, "Address: insufficient balance");

    (bool success, ) = recipient.call{value: amount}("");
    require(success, "Address: unable to send value, recipient may have reverted");
  }

  function functionCall(address target, bytes memory data) internal returns (bytes memory) {
      return functionCallWithValue(target, data, 0, "Address: low-level call failed");
  }

  function functionCall(
      address target,
      bytes memory data,
      string memory errorMessage
  ) internal returns (bytes memory) {
      return functionCallWithValue(target, data, 0, errorMessage);
  }

  function functionCallWithValue(
      address target,
      bytes memory data,
      uint256 value
  ) internal returns (bytes memory) {
    return functionCallWithValue(target, data, value, "Address: low-level call with value failed");
  }

  function functionCallWithValue(
    address target,
    bytes memory data,
    uint256 value,
    string memory errorMessage
  ) internal returns (bytes memory) {
    require(address(this).balance >= value, "Address: insufficient balance for call");
    (bool success, bytes memory returndata) = target.call{value: value}(data);
    return verifyCallResultFromTarget(target, success, returndata, errorMessage);
  }

  function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
    return functionStaticCall(target, data, "Address: low-level static call failed");
  }

  function functionStaticCall(
    address target,
    bytes memory data,
    string memory errorMessage
  ) internal view returns (bytes memory) {
    (bool success, bytes memory returndata) = target.staticcall(data);
    return verifyCallResultFromTarget(target, success, returndata, errorMessage);
  }

  function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {
    return functionDelegateCall(target, data, "Address: low-level delegate call failed");
  }

  function functionDelegateCall(
    address target,
    bytes memory data,
    string memory errorMessage
  ) internal returns (bytes memory) {
    (bool success, bytes memory returndata) = target.delegatecall(data);
    return verifyCallResultFromTarget(target, success, returndata, errorMessage);
  }

  function verifyCallResultFromTarget(
    address target,
    bool success,
    bytes memory returndata,
    string memory errorMessage
  ) internal view returns (bytes memory) {
    if (success) {
      if (returndata.length == 0) {
        require(isContract(target), "Address: call to non-contract");
      }
      return returndata;
    } else {
      _revert(returndata, errorMessage);
    }
  }

  function verifyCallResult(
    bool success,
    bytes memory returndata,
    string memory errorMessage
  ) internal pure returns (bytes memory) {
    if (success) {
      return returndata;
    } else {
      _revert(returndata, errorMessage);
    }
  }

  function _revert(bytes memory returndata, string memory errorMessage) private pure {
    if (returndata.length > 0) {
      assembly {
        let returndata_size := mload(returndata)
        revert(add(32, returndata), returndata_size)
      }
    } else {
      revert(errorMessage);
    }
  }
}

library SafeERC20 {
  using Address for address;

  function safeTransfer(
    IERC20 token,
    address to,
    uint256 value
  ) internal {
    _callOptionalReturn(token, abi.encodeWithSelector(token.transfer.selector, to, value));
  }

  function safeTransferFrom(
    IERC20 token,
    address from,
    address to,
    uint256 value
  ) internal {
    _callOptionalReturn(token, abi.encodeWithSelector(token.transferFrom.selector, from, to, value));
  }

  function safeApprove(
    IERC20 token,
    address spender,
    uint256 value
  ) internal {
    require(
      (value == 0) || (token.allowance(address(this), spender) == 0),
      "SafeERC20: approve from non-zero to non-zero allowance"
    );
    _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, value));
  }

  function safeIncreaseAllowance(
    IERC20 token,
    address spender,
    uint256 value
  ) internal {
    uint256 newAllowance = token.allowance(address(this), spender) + value;
    _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
  }

  function safeDecreaseAllowance(
    IERC20 token,
    address spender,
    uint256 value
  ) internal {
    unchecked {
      uint256 oldAllowance = token.allowance(address(this), spender);
      require(oldAllowance >= value, "SafeERC20: decreased allowance below zero");
      uint256 newAllowance = oldAllowance - value;
      _callOptionalReturn(token, abi.encodeWithSelector(token.approve.selector, spender, newAllowance));
    }
  }

  function safePermit(
    IERC20Permit token,
    address owner,
    address spender,
    uint256 value,
    uint256 deadline,
    uint8 v,
    bytes32 r,
    bytes32 s
  ) internal {
    uint256 nonceBefore = token.nonces(owner);
    token.permit(owner, spender, value, deadline, v, r, s);
    uint256 nonceAfter = token.nonces(owner);
    require(nonceAfter == nonceBefore + 1, "SafeERC20: permit did not succeed");
  }

  function _callOptionalReturn(IERC20 token, bytes memory data) private {
    bytes memory returndata = address(token).functionCall(data, "SafeERC20: low-level call failed");
    if (returndata.length > 0) {
      require(abi.decode(returndata, (bool)), "SafeERC20: ERC20 operation did not succeed");
    }
  }
}

abstract contract ReentrancyGuard {
  uint256 private constant _NOT_ENTERED = 1;
  uint256 private constant _ENTERED = 2;

  uint256 private _status;

  constructor () {
    _status = _NOT_ENTERED;
  }
  
  modifier nonReentrant() {
    require(_status != _ENTERED, "ReentrancyGuard: reentrant call");
    _status = _ENTERED;
    _;
    _status = _NOT_ENTERED;
  }
}

interface ISwapPlusV2 {
  struct SwapInputType {
    address fromToken;
    address toToken;
    uint256 amountIn;
    uint256 amountOutMin;
    address receiver;
  }

  struct SwapParamType {
    address to;
    address tokenIn;
    address tokenOut;
    uint256 percent;
    bytes param;
  }

  struct SwapLineType {
    SwapParamType[] pools;
  }

  struct swapBlockType {
    SwapLineType[] lines;
  }

  function swap(SwapInputType calldata inData, swapBlockType[] calldata swBlocks) external payable returns(uint256, uint256);
}

contract BridgePlusv2 is Ownable, ReentrancyGuard {
  using SafeERC20 for IERC20;

  uint256 public chainId;
  bool public noWrapped;
  address public WETH;
  address public treasury;
  address public swapRouter;
  address public operator;

  mapping (address => bool) public noFeeWallets;
  mapping (address => bool) public noFeeBridges;
  mapping (address => bool) public managers;
  mapping (address => bool) public whiteListContracts;
  mapping (address => address) public approverContracts;
  mapping (uint256 => uint256) public operatorFee;

  uint256 public swapFee = 3000;
  uint256 private constant coreDecimal = 1000000;

  struct SwapInputType {
    address bridge;
    address receiver;
    address fromToken;
    uint256 amount;
    uint256 value;
    address toToken;
    bytes param;
    uint256 dstChainId;
    address dstToken;
    address receiveToken;
  }

  struct RedeemInputType {
    address bridge;
    address receiver;
    address fromToken;
    address toToken;
    bytes param;
  }

  error DelegatecallFailed();
  event BridgePlusFee(address token, uint256 fee, address treasury);
  event BridgePlusSwap(address receiver, uint256 srcChainId, address srcToken, uint256 amount, uint256 dstChainId, address dstToken, address receiveToken, address bridge);
  event BridgePlusRedeem(address receiver, address dstToken, uint256 receiveToken);

  modifier onlyManager() {
    require(managers[msg.sender], "BridgePlus: !manager");
    _;
  }

  modifier onlyOperator() {
    require(operator == msg.sender, "BridgePlus: !operator");
    _;
  }

  constructor(
    uint256 _chainId,
    bool _noWrapped,
    address _WETH,
    address _treasury,
    address _swapRouter,
    address[] memory _wlContracts,
    address[] memory _noFeeBridges,
    address[2][] memory _approver
  ) {
    require(_WETH != address(0), "BridgePlus: Wrong WETH");
    require(_treasury != address(0), "BridgePlus: Treasury");
    require(_swapRouter != address(0), "BridgePlus: SwapPlus");
    
    chainId = _chainId;
    noWrapped = _noWrapped;
    WETH = _WETH;
    treasury = _treasury;
    swapRouter = _swapRouter;
    managers[msg.sender] = true;

    for (uint256 x=0; x<_wlContracts.length; x++) {
      require(_wlContracts[x] != address(0), "BridgePlus: Wrong wl contract");
      whiteListContracts[_wlContracts[x]] = true;
    }

    for (uint256 x=0; x<_noFeeBridges.length; x++) {
      require(_noFeeBridges[x] != address(0), "BridgePlus: Wrong wl contract");
      noFeeBridges[_noFeeBridges[x]] = true;
    }

    for (uint256 x=0; x<_approver.length; x++) {
      require(_approver[x][0] != address(0), "BridgePlus: Wrong approve handler");
      require(_approver[x][1] != address(0), "BridgePlus: Wrong approve contract");
      approverContracts[_approver[x][0]] = _approver[x][1];
    }
  }

  receive() external payable { }

  function swap(SwapInputType calldata bridgeInfo, ISwapPlusV2.SwapInputType calldata inData, ISwapPlusV2.swapBlockType[] calldata swBlocks) public payable nonReentrant {
    uint256 amount = 0;
    uint256 value = 0;
    if (
      (noWrapped == false && bridgeInfo.fromToken == address(0)) ||
      (noWrapped == true && (bridgeInfo.fromToken == WETH || bridgeInfo.fromToken == address(0)))
    ) {
      amount = msg.value;
      value = inData.amountIn;
    }
    else {
      amount = IERC20(bridgeInfo.fromToken).balanceOf(address(this));
      IERC20(bridgeInfo.fromToken).safeTransferFrom(msg.sender, address(this), bridgeInfo.amount);
      amount = IERC20(bridgeInfo.fromToken).balanceOf(address(this)) - amount;
    }

    if (noFeeWallets[msg.sender] == false && noFeeBridges[bridgeInfo.bridge] == false) {
      amount = _cutFee(bridgeInfo.fromToken, amount);
    }

    if (noFeeBridges[bridgeInfo.bridge] == true && operatorFee[bridgeInfo.dstChainId] > 0) {
      (bool success, ) = payable(operator).call{value: operatorFee[bridgeInfo.dstChainId]}("");
      require(success, "BridgePlus: Failed send operator fee");
    }

    if (swBlocks.length > 0) {
      _approveTokenIfNeeded(bridgeInfo.fromToken, swapRouter, amount);
      (, amount) = ISwapPlusV2(swapRouter).swap{value: value}(inData, swBlocks);
    }
    else if (noWrapped == false && bridgeInfo.fromToken == address(0) && bridgeInfo.toToken == WETH) {
      IWETH(WETH).deposit{value: bridgeInfo.amount}();
    }

    require(whiteListContracts[bridgeInfo.bridge], "BridgePlus: !wrong bridge");
    if (approverContracts[bridgeInfo.bridge] != address(0)) {
      _approveTokenIfNeeded(bridgeInfo.toToken, approverContracts[bridgeInfo.bridge], amount);
    }
    else {
      _approveTokenIfNeeded(bridgeInfo.toToken, bridgeInfo.bridge, amount);
    }
    (bool ok, ) = address(bridgeInfo.bridge).call{value: bridgeInfo.value}(bridgeInfo.param);
    if (!ok) {
      revert DelegatecallFailed();
    }

    emit BridgePlusSwap(bridgeInfo.receiver, chainId, bridgeInfo.fromToken, bridgeInfo.amount, bridgeInfo.dstChainId, bridgeInfo.dstToken, bridgeInfo.receiveToken, bridgeInfo.bridge);
  }

  function redeem(RedeemInputType calldata bridgeInfo, ISwapPlusV2.SwapInputType calldata inData, ISwapPlusV2.swapBlockType[] calldata swBlocks) public onlyOperator nonReentrant returns(uint256) {
    uint256 amount = 0;
    if (
      (noWrapped == false && bridgeInfo.fromToken == address(0)) ||
      (noWrapped == true && (bridgeInfo.fromToken == WETH || bridgeInfo.fromToken == address(0)))
    ) {
      amount = address(this).balance;
    }
    else {
      amount = IERC20(bridgeInfo.fromToken).balanceOf(address(this));
    }
    (bool ok, ) = address(bridgeInfo.bridge).call(bridgeInfo.param);
    if (!ok) {
      revert DelegatecallFailed();
    }
    uint256 value = 0;
    if (
      (noWrapped == false && bridgeInfo.fromToken == address(0)) ||
      (noWrapped == true && (bridgeInfo.fromToken == WETH || bridgeInfo.fromToken == address(0)))
    ) {
      amount = address(this).balance - amount;
      value = amount;
    }
    else {
      amount = IERC20(bridgeInfo.fromToken).balanceOf(address(this)) - amount;
    }

    if (swBlocks.length > 0) {
      _approveTokenIfNeeded(bridgeInfo.fromToken, swapRouter, amount);
      (, amount) = ISwapPlusV2(swapRouter).swap{value: value}(inData, swBlocks);
    }

    if (
      (noWrapped == false && bridgeInfo.toToken == address(0)) ||
      (noWrapped == true && (bridgeInfo.toToken == WETH || bridgeInfo.toToken == address(0)))
    ) {
      (bool success, ) = payable(bridgeInfo.receiver).call{value: amount}("");
      require(success, "BridgePlus: Failed redeem");
    }
    else {
      IERC20(bridgeInfo.toToken).safeTransfer(bridgeInfo.receiver, amount);
    }

    emit BridgePlusRedeem(bridgeInfo.receiver, bridgeInfo.toToken, amount);
    return amount;
  }

  function setManager(address account, bool access) public onlyOwner {
    require(account != address(0), "BridgePlus: Wrong account");
    managers[account] = access;
  }

  function setOperator(address account) public onlyOwner {
    require(account != address(0), "BridgePlus: Wrong account");
    operator = account;
  }

  function setSwapRouter(address _swapRouter) public onlyOwner {
    require(_swapRouter != address(0), "BridgePlus: Wrong account");
    swapRouter = _swapRouter;
  }

  function setNoFeeWallets(address account, bool access) public onlyManager {
    require(account != address(0), "BridgePlus: Wrong account");
    noFeeWallets[account] = access;
  }

  function setWhiteListContracts(address account, bool access) public onlyManager {
    require(account != address(0), "BridgePlus: Wrong account");
    whiteListContracts[account] = access;
  }

  function setApproverContracts(address bridge, address approver) public onlyManager {
    require(bridge != address(0), "BridgePlus: Wrong account");
    approverContracts[bridge] = approver;
  }

  function setSwapFee(uint256 _swapFee) public onlyManager {
    require(_swapFee < (coreDecimal / 100), "BridgePlus: Too big fee");
    swapFee = _swapFee;
  }

  function setTreasury(address _treasury) public onlyManager {
    require(_treasury != address(0), "BridgePlus: Wrong account");
    treasury = _treasury;
  }

  function _approveTokenIfNeeded(address token, address spender, uint256 amount) internal {
    if (
      (noWrapped == false && token == address(0)) ||
      (noWrapped == true && (token == WETH || token == address(0)))
    ) return;
    uint256 allowance = IERC20(token).allowance(address(this), spender);
    if (allowance < amount) {
      if (allowance > 0) {
        IERC20(token).safeApprove(spender, 0);
      }
      IERC20(token).safeApprove(spender, amount);
    }
  }

  function _cutFee(address _token, uint256 _amount) internal returns(uint256) {
    if (_amount > 0) {
      uint256 fee = _amount * swapFee / coreDecimal;
      if (fee > 0) {
        if (
          (noWrapped == false && _token == address(0)) ||
          (noWrapped == true && (_token == WETH || _token == address(0)))
        ) {
          (bool success, ) = payable(treasury).call{value: fee}("");
          require(success, "BridgePlus: Failed cut fee");
        }
        else {
          IERC20(_token).safeTransfer(treasury, fee);
        }
      }
      emit BridgePlusFee(_token, fee, treasury);
      return _amount - fee;
    }
    return 0;
  }
}
