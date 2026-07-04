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

contract SwapPlusV2 is Ownable, ReentrancyGuard {
  using SafeERC20 for IERC20;

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

  struct SwapConvertType {
    string dexFuncName;
    bool noReplace;
    uint256 startIndex;
    uint256 dataLength;
  }

  bool public noWrapped;
  address public WETH;
  address public treasury;
  uint256 public swapFee = 3000;
  uint256 public managerDecimal = 1000000;
  mapping (address => bool) public noFeeWallets;
  mapping (address => bool) public managers;

  mapping (address => mapping(bytes4 => SwapConvertType)) public wlDexs;

  event SwapPlus(address tokenIn, address tokenOut, uint256 amountIn, uint256 amountUsed, uint256 amountOut);

  error DelegatecallFailed();

  constructor(
    bool _noWrapped,
    address _WETH,
    address _treasury,
    address[] memory dexs,
    bytes4[] memory funcs,
    SwapConvertType[] memory info
  ) {
    noWrapped = _noWrapped;
    WETH = _WETH;
    treasury = _treasury;
    managers[msg.sender] = true;
    for (uint256 x=0; x<dexs.length; x++) {
      wlDexs[dexs[x]][funcs[x]] = info[x];
    }
  }

  modifier onlyManager() {
    require(managers[msg.sender], "SwapPlus: !manager");
    _;
  }

  receive() external payable { }

  function swap(SwapInputType calldata inData, swapBlockType[] calldata swBlocks) public payable nonReentrant returns(uint256, uint256) {
    uint256 usedAmount = 0;
    uint256 outBalance = 0;
    if (
      (noWrapped == false && inData.fromToken != address(0)) ||
      (noWrapped == true && (inData.fromToken != address(0) && inData.fromToken != WETH))
    ) {
      usedAmount = IERC20(inData.fromToken).balanceOf(address(this));
      IERC20(inData.fromToken).safeTransferFrom(msg.sender, address(this), inData.amountIn);
      usedAmount = IERC20(inData.fromToken).balanceOf(address(this)) - usedAmount;

      outBalance = IERC20(inData.toToken).balanceOf(address(this));
    }
    else {
      usedAmount = msg.value;

      outBalance = address(this).balance;
    }

    if (noFeeWallets[msg.sender] == false) {
      usedAmount = _cutFee(inData.toToken, usedAmount);
    }

    if (noWrapped == false && inData.toToken == address(0)) {
      IWETH(WETH).deposit{value: usedAmount}();
    }

    uint256 blockLen = swBlocks.length;
    uint256 inAmount = usedAmount;
    uint256 outAmount = 0;
    for (uint256 x=0; x<blockLen; x++) {
      uint256 lineLen = swBlocks[x].lines.length;
      outAmount = 0;
      for (uint256 y=0; y<lineLen; y++) {
        outAmount += _swap(swBlocks[x].lines[y], inAmount);
      }
      inAmount = outAmount;
    }

    require(outAmount >= inData.amountOutMin, "");
    if (
      (noWrapped == false && inData.toToken != address(0)) ||
      (noWrapped == true && (inData.toToken == address(0) || inData.toToken == WETH))
    ) {
      if (noWrapped == false) {
        IWETH(WETH).withdraw(outAmount);
      }
      (bool success, ) = payable(inData.receiver).call{value: outAmount}("");
      require(success, "SwapPlus: Failed receipt");
    }
    else {
      IERC20(inData.toToken).safeTransfer(inData.receiver, outAmount);
    }

    emit SwapPlus(inData.fromToken, inData.toToken, inData.amountIn, usedAmount, outAmount);
    return (usedAmount, outAmount);
  }

  function _swap(SwapLineType memory line, uint256 amount) internal returns(uint256) {
    uint256 swLen = line.pools.length;
    uint256 inAmount = amount;
    uint256 outAmount = 0;
    for (uint256 x=0; x<swLen; x++) {
      outAmount = IERC20(line.pools[x].tokenOut).balanceOf(address(this));
      inAmount = inAmount * line.pools[x].percent / managerDecimal;
      bytes4 funcIndex = _extractFirst4Bytes(line.pools[x].param);

      SwapConvertType memory dexInfo = wlDexs[line.pools[x].to][funcIndex];
      require(dexInfo.noReplace == true || dexInfo.startIndex > 0, "SwapPlus: no WL contract");
      bytes memory param = line.pools[x].param;
      if (dexInfo.noReplace == false && dexInfo.startIndex > 0) {
        bytes memory amountByte = _toBytes(inAmount, dexInfo.dataLength);
        param = _replacePart(param, dexInfo.startIndex, amountByte);
      }

      _approveTokenIfNeeded(line.pools[x].tokenIn, line.pools[x].to, inAmount);
      (bool ok, ) = address(line.pools[x].to).call(param);
      if (!ok) {
        revert DelegatecallFailed();
      }
      outAmount = IERC20(line.pools[x].tokenOut).balanceOf(address(this)) - outAmount;
      inAmount = outAmount;
    }
    return outAmount;
  }

  function setManager(address account, bool access) public onlyOwner {
    managers[account] = access;
  }

  function setNoFeeWallets(address account, bool access) public onlyManager {
    noFeeWallets[account] = access;
  }

  function setSwapFee(uint256 _swapFee) public onlyManager {
    swapFee = _swapFee;
  }

  function setTreasury(address _treasury) public onlyManager {
    treasury = _treasury;
  }

  function addDex(address dex, bytes4 func, SwapConvertType calldata data) public onlyManager {
    wlDexs[dex][func] = data;
  }

  function _approveTokenIfNeeded(address token, address spender, uint256 amount) internal {
    if (IERC20(token).allowance(address(this), spender) < amount) {
      IERC20(token).safeApprove(spender, 0);
      IERC20(token).safeApprove(spender, type(uint256).max);
    }
  }

  function _cutFee(address token, uint256 _amount) internal returns(uint256) {
    if (_amount > 0) {
      uint256 fee = _amount * swapFee / managerDecimal;
      if (fee > 0) {
        if (
          (noWrapped == false && token != address(0)) ||
          (noWrapped == true && (token == WETH || token == address(0)))
        ) {
          (bool success, ) = payable(treasury).call{value: fee}("");
          require(success, "SwapPlus: Failed cut fee");
        }
        else {
          IERC20(token).safeTransfer(treasury, fee);
        }
      }
      return _amount - fee;
    }
    return 0;
  }

  function _toBytes(uint256 value, uint256 n) internal pure returns (bytes memory) {
    require(n <= 32, "SwapPlus: Length exceeds 32 bytes");
    bytes memory result = new bytes(n);
    for (uint256 i = 0; i < n; i++) {
      result[i] = bytes1(uint8(value >> (8 * (n - 1 - i))));
    }
    return result;
  }

  function _replacePart(
    bytes memory data,
    uint256 startIndex,
    bytes memory newValue
  ) internal pure returns (bytes memory) {
    require(startIndex + newValue.length <= data.length, "SwapPlus: Replacement exceeds data length");
    for (uint256 i = 0; i < newValue.length; i++) {
      data[startIndex + i] = newValue[i];
    }
    return data;
  }

  function _extractFirst4Bytes(bytes memory data) internal pure returns (bytes4) {
    require(data.length >= 4, "SwapPlus: Data too short to extract 4 bytes");
    bytes4 extractedBytes;
    for (uint256 i = 0; i < 4; i++) {
      extractedBytes |= bytes4(data[i]) >> (i * 8);
    }
    return extractedBytes;
  }
}
