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
    _transferOwnership(0x25474bFa6f9c5b973D8B5b31969eDDD0E97EE997);
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
      _revert(errorMessage);
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
      _revert(errorMessage);
    }
  }

  function _revert(string memory errorMessage) private pure {
    revert(errorMessage);
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

contract BridgePoolv2_1 is Ownable, ReentrancyGuard {
  using SafeERC20 for IERC20;

  uint256 public immutable chainId;
  address public immutable weth;
  address public treasury;
  address public operator;

  uint256 public swapFee = 5000;
  uint256 public platformFee = 300000;
  uint256 private constant CORE_DECIMAL = 1000000;
  uint256 private constant MULTIPLIER = 1_0000_0000_0000_0000;

  struct StakeInfoType {
    uint256 amount;   // Staked liquidity
    uint256 debtReward;
    uint256 rtr;
    uint256 updatedAt;
  }

  mapping (address => uint256) public totalReward;
  mapping (address => uint256) public prevReward;
  mapping (address => uint256) public rtr;
  mapping (address => uint256) public tvl;
  // Token => account => info
  mapping (address => mapping(address => StakeInfoType)) public userInfo;

  error DelegatecallFailed();
  event LockAssets(
    address operator,
    address receiver,
    address refund,
    address token,
    uint256 amount,
    uint256 srcChainId,
    uint256 desChainId
  );
  event UnlockAssets(address account, address token, uint256 amount);
  event Stake(address account, address token, uint256 amount);
  event Unstake(address account, address token, uint256 amount);
  event Claim(address acccount, address token, uint256 amount);
  event CutFee(
    address treasury,
    address token,
    uint256 fee,
    uint256 treasuryFee,
    uint256 totalFee,
    uint256 tvl
  );
  event ChangeOperator(address oldOperator, address newOperator);
  event ChangeSwapFee(uint256 oldFee, uint256 newFee);
  event ChangePlatformFee(uint256 oldFee, uint256 newFee);
  event ChangeTreasury(address oldTreasury, address newTreasury);

  modifier onlyOperator() {
    require(operator == msg.sender, "BridgePoolv2: !operator");
    _;
  }

  modifier nonZeroAddress(address param) {
    require(param != address(0), "BridgePoolv2: non-zero address");
    _;
  }

  constructor(
    uint256 _chainId,
    address _weth,
    address _treasury,
    address _operator
  ) nonZeroAddress(_weth) nonZeroAddress(_treasury) nonZeroAddress(_operator) {
    chainId = _chainId;
    weth = _weth;
    treasury = _treasury;
    operator = _operator;
  }

  receive() external payable { }

  function lockAssets(
    address receiver,
    address token,
    uint256 amount,
    address refund,
    uint256 outChainID
  ) public payable nonReentrant returns(uint256) {
    uint256 amountIn = 0;
    if (token == address(0)) {
      amountIn = msg.value;
    }
    else {
      amountIn = IERC20(token).balanceOf(address(this));
      IERC20(token).safeTransferFrom(msg.sender, address(this), amount);
      amountIn = IERC20(token).balanceOf(address(this)) - amountIn;
    }
    require(amountIn > 0, "BridgePoolv2: zero lock amount");

    amountIn = cutFee(token, amountIn); 

    emit LockAssets(msg.sender, receiver, refund, token, amountIn, chainId, outChainID);
    return amountIn;
  }

  function unlockAssets(
    address account,
    address token,
    uint256 amount,
    address swapRouter,
    bytes calldata swapPm,
    uint256 value
  ) public onlyOperator nonZeroAddress(account) {
    require(amount > 0, "BridgePoolv2: zero transfer");
    uint256 liquidity = 0;
    if (token == address(0)) {
      liquidity = address(this).balance;
    }
    else {
      liquidity = IERC20(token).balanceOf(address(this));
    }
    require(amount <= liquidity, "BridgePoolv2: Few redeem liquidity");

    if (swapRouter == address(0)) {
      if (token == address(0)) {
        (bool success, ) = payable(account).call{value: amount}("");
        require(success, "BridgePoolv2: unstake");
      }
      else {
        IERC20(token).safeTransfer(account, amount);
      }
    }
    else {
      approveTokenIfNeeded(token, swapRouter, amount);
      (bool ok, ) = address(swapRouter).call{value: value}(swapPm);
      if (!ok) {
        revert DelegatecallFailed();
      }
    }
    emit UnlockAssets(account, token, amount);
  }

  function stake(
    address account,
    address token,
    uint256 amount
  ) public payable nonReentrant returns(uint256) {
    uint256 amountIn = 0;
    if (token == address(0)) {
      amountIn = msg.value;
    }
    else {
      amountIn = IERC20(token).balanceOf(address(this));
      IERC20(token).safeTransferFrom(msg.sender, address(this), amount);
      amountIn = IERC20(token).balanceOf(address(this)) - amountIn;
    }

    userInfo[token][account].debtReward = getReward(account, token);

    if (tvl[token] > 0) {
      rtr[token] += (totalReward[token] - prevReward[token]) * MULTIPLIER / tvl[token];
    }
    else {
      rtr[token] = 0;
    }
    prevReward[token] = totalReward[token];
    tvl[token] += amountIn;
    
    userInfo[token][account].amount += amountIn;
    userInfo[token][account].rtr = rtr[token];
    userInfo[token][account].updatedAt = block.timestamp;
    emit Stake(account, token, amountIn);
    return amountIn;
  }

  function unstake(address account, address token, uint256 amount) public returns(uint256) {
    require(account == msg.sender || operator == msg.sender, "BridgePoolv2: wrong account");
    if (amount > userInfo[token][account].amount) {
      amount = userInfo[token][account].amount;
    }

    claimReward(account, token);

    if (amount > 0) {
      uint256 liquidity = 0;
      if (token == address(0)) {
        liquidity = address(this).balance;
      }
      else {
        liquidity = IERC20(token).balanceOf(address(this));
      }

      if (liquidity < amount) {
        amount = liquidity;
      }

      if (token == address(0)) {
        (bool success, ) = payable(account).call{value: amount}("");
        require(success, "BridgePoolv2: unstake");
      }
      else {
        IERC20(token).safeTransfer(account, amount);
      }

      tvl[token] -= amount;
      userInfo[token][account].amount -= amount;
      emit Unstake(account, token, amount);
    }
    return amount;
  }

  function getReward(address account, address token) public view returns(uint256) {
    uint256 reward = userInfo[token][account].debtReward;
    if (userInfo[token][account].amount > 0) {
      uint256 currentRtr = tvl[token] > 0 ?
        (totalReward[token] - prevReward[token]) * MULTIPLIER / tvl[token] : 0;
      currentRtr += rtr[token];
      if (currentRtr >= userInfo[token][account].rtr) {
        reward += (currentRtr - userInfo[token][account].rtr) * userInfo[token][account].amount / MULTIPLIER;
      }
    }
    return reward;
  }

  function claimReward(address account, address token) public nonReentrant nonZeroAddress(account) returns(uint256) {
    uint256 reward = getReward(account, token);
    uint256 debtReward = 0;
    if (reward > 0) {
      uint256 tmpTvl = 0;
      if (token == address(0)) {
        tmpTvl = address(this).balance;
      }
      else {
        tmpTvl = IERC20(token).balanceOf(address(this));
      }

      uint256 trasferAmount = reward;
      if (tmpTvl < reward) {
        trasferAmount = tmpTvl;
        debtReward = reward - tmpTvl;
      }

      if (trasferAmount > 0) {
        if (token == address(0)) {
          (bool success, ) = payable(account).call{value: trasferAmount}("");
          require(success, "BridgePoolv2: claim");
        }
        else {
          IERC20(token).safeTransfer(account, trasferAmount);
        }
      }
    }

    uint256 currentRtr = tvl[token] > 0 ?
      (totalReward[token] - prevReward[token]) * MULTIPLIER / tvl[token] : 0;
    rtr[token] += currentRtr;
    prevReward[token] = totalReward[token];

    userInfo[token][account].debtReward = debtReward;
    userInfo[token][account].rtr = rtr[token];
    userInfo[token][account].updatedAt = block.timestamp;
    emit Claim(account, token, reward);
    return reward;
  }

  function setOperator(address account) public onlyOwner nonZeroAddress(account) {
    emit ChangeOperator(operator, account);
    operator = account;
  }

  function setSwapFee(uint256 newFee) public onlyOwner {
    require(newFee < (CORE_DECIMAL / 100), "BridgePoolv2: Too big swap fee");
    emit ChangeSwapFee(swapFee, newFee);
    swapFee = newFee;
  }

  function setPlatformFee(uint256 newPlatformFee) public onlyOwner {
    require(newPlatformFee <= CORE_DECIMAL, "BridgePoolv2: Too big platform fee");
    emit ChangePlatformFee(platformFee, newPlatformFee);
    platformFee = newPlatformFee;
  }

  function setTreasury(address newTreasury) public onlyOwner nonZeroAddress(newTreasury) {
    emit ChangeTreasury(treasury, newTreasury);
    treasury = newTreasury;
  }

  function approveTokenIfNeeded(address token, address spender, uint256 amount) internal {
    if (token == address(0)) return;
    uint256 allowance = IERC20(token).allowance(address(this), spender);
    if (allowance < amount) {
      if (allowance > 0) {
        IERC20(token).safeApprove(spender, 0);
      }
      IERC20(token).safeApprove(spender, amount);
    }
  }

  function cutFee(address token, uint256 amount) internal returns(uint256) {
    if (amount > 0) {
      uint256 fee = amount * swapFee / CORE_DECIMAL;
      uint256 treasuryFee = amount * swapFee * platformFee / CORE_DECIMAL / CORE_DECIMAL;
      if (treasuryFee > 0) {
        if (token == address(0)) {
          (bool success, ) = payable(treasury).call{value: treasuryFee}("");
          require(success, "BridgePoolv2: Failed cut fee");
        }
        else {
          IERC20(token).safeTransfer(treasury, treasuryFee);
        }
      }
      if (tvl[token] > 0) {
        totalReward[token] += (fee - treasuryFee);
      }
      emit CutFee(treasury, token, fee, treasuryFee, totalReward[token], tvl[token]);
      return amount - fee;
    }
    return 0;
  }

  function withdrawToken(address token, address target, uint256 amount) public onlyOwner nonZeroAddress(target) {
    require(amount > 0, "BridgePlus: zero transfer");
    if (token == address(0)) {
      (bool success, ) = payable(target).call{value: amount}("");
      require(success, "BridgePoolv2: Failed withdraw");
    }
    else {
      IERC20(token).safeTransfer(target, amount);
    }
  }
}
