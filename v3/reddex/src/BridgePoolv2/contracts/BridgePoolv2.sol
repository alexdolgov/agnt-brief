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

contract BridgePoolv2 is Ownable, ReentrancyGuard {
  using SafeERC20 for IERC20;

  uint256 public chainId;
  bool public noWrapped;
  address public WETH;
  address public treasury;

  mapping (address => bool) public noFeeWallets;
  mapping (address => bool) public managers;
  mapping (address => bool) public operators;

  uint256 public swapFee = 5000;
  uint256 public platformFee = 300000;
  uint256 private constant coreDecimal = 1000000;
  uint256 private constant MULTIPLIER = 1_0000_0000_0000_0000;

  struct StakeInfoType {
    uint256 amount;   // Staked liquidity
    uint256 debtReward;
    uint256 rtr;
    uint256 updatedAt;
  }

  struct SwapVoucher {
    address token;
    uint256 amount;
    uint256 outChain;
    address toAccount;
    address refundAccount;
  }

  mapping (address => uint256) public totalReward;
  mapping (address => uint256) public prevReward;
  mapping (address => uint256) public rtr;
  mapping (address => uint256) public tvl;
  uint256 private unstakeDebtIndex = 1;
  uint256 private swapIndex = 1;
  // Token => account => info
  mapping (address => mapping(address => StakeInfoType)) public userInfo;
  mapping (uint256 => SwapVoucher) public voucherLists;

  event Swap(address operator, address receiver, address refund, address token, uint256 amount, uint256 srcChainId, uint256 desChainId, uint256 swapIndex);
  event Redeem(address operator, address account, address token, uint256 amount, uint256 srcChainId, uint256 swapIndex);
  event Refund(address operator, address account, address token, uint256 index, uint256 amount);
  event Stake(address account, address token, uint256 amount);
  event Unstake(address account, address token, uint256 amount, bool force);
  event UnstakeDebt(address account, address token, uint256 amount, uint256 chainId, uint256 index);
  event DebtUnstake(address account, address token, uint256 amount, uint256 chainId, uint256 index);
  event Claim(address acccount, address token, uint256 amount);
  event CutFee(address treasury, address token, uint256 fee, uint256 treasuryFee, uint256 totalFee, uint256 tvl);

  modifier onlyManager() {
    require(managers[msg.sender], "BridgePoolv2: !manager");
    _;
  }

  modifier onlyOperator() {
    require(operators[msg.sender], "BridgePoolv2: !operator");
    _;
  }

  constructor(
    uint256 _chainId,
    bool _noWrapped,
    address _WETH,
    address _treasury
  ) {
    require(_WETH != address(0), "BridgePoolv2: Wrong WETH");
    require(_treasury != address(0), "BridgePoolv2: Treasury");
    
    chainId = _chainId;
    noWrapped = _noWrapped;
    WETH = _WETH;
    treasury = _treasury;
    managers[msg.sender] = true;
  }

  receive() external payable { }

  function swap(address _to, address _token, uint256 _amount, address _refund, uint256 _outChainID) public payable nonReentrant returns(uint256) {
    uint256 amount = 0;
    if (
      (noWrapped == false && _token == address(0)) ||
      (noWrapped == true && (_token == WETH || _token == address(0)))
    ) {
      amount = msg.value;
    }
    else {
      amount = IERC20(_token).balanceOf(address(this));
      IERC20(_token).safeTransferFrom(msg.sender, address(this), _amount);
      amount = IERC20(_token).balanceOf(address(this)) - amount;
    }
    
    if (noFeeWallets[msg.sender] == false) {
      amount = _cutFee(_token, amount);
    }
    voucherLists[swapIndex] = SwapVoucher(_token, amount, _outChainID, _to, _refund);
    emit Swap(msg.sender, _to, _refund, _token, amount, chainId, _outChainID, swapIndex);
    swapIndex ++;
    return amount;
  }

  function redeem(address account, address token, uint256 amount, uint256 srcChainId, uint256 _swapIndex, uint256 operatorFee) public onlyOperator returns(uint256) {
    uint256 liquidity = 0;
    if (
      (noWrapped == false && token == address(0)) ||
      (noWrapped == true && (token == WETH || token == address(0)))
    ) {
      liquidity = address(this).balance;
    }
    else {
      liquidity = IERC20(token).balanceOf(address(this));
    }
    require(amount <= liquidity, "BridgePoolv2: Few redeem liquidity");
    require(amount >= operatorFee, "BridgePoolv2: Too much operator fee");

    amount -= operatorFee;
    if (amount > 0) {
      if (
        (noWrapped == false && token == address(0)) ||
        (noWrapped == true && (token == WETH || token == address(0)))
      ) {
        (bool success, ) = payable(account).call{value: amount}("");
        require(success, "BridgePoolv2: unstake");
      }
      else {
        IERC20(token).safeTransfer(account, amount);
      }
      emit Redeem(msg.sender, account, token, amount, srcChainId, _swapIndex);
    }

    return amount;
  }

  function refund(uint256 _index) public onlyOperator returns(uint256) {
    uint256 amount = voucherLists[_index].amount;
    address token = voucherLists[_index].token;
    if (
      (noWrapped == false && token == address(0)) ||
      (noWrapped == true && (token == WETH || token == address(0)))
    ) {
      (bool success, ) = payable(voucherLists[_index].refundAccount).call{value: amount}("");
      require(success, "BridgePoolv2: refund");
    }
    else {
      IERC20(token).safeTransfer(voucherLists[_index].refundAccount, amount);
    }
    
    emit Refund(msg.sender, voucherLists[_index].refundAccount, token, _index, amount);
    return amount;
  }

  function stake(address account, address token, uint256 _amount) public payable nonReentrant returns(uint256) {
    uint256 amount = 0;
    if (
      (noWrapped == false && token == address(0)) ||
      (noWrapped == true && (token == WETH || token == address(0)))
    ) {
      amount = msg.value;
    }
    else {
      amount = IERC20(token).balanceOf(address(this));
      IERC20(token).safeTransferFrom(msg.sender, address(this), _amount);
      amount = IERC20(token).balanceOf(address(this)) - amount;
    }

    userInfo[token][account].debtReward = getReward(account, token);

    if (tvl[token] > 0) {
      rtr[token] += (totalReward[token] - prevReward[token]) * MULTIPLIER / tvl[token];
    }
    else {
      rtr[token] = 0;
    }
    prevReward[token] = totalReward[token];
    tvl[token] += amount;
    
    userInfo[token][account].amount += amount;
    userInfo[token][account].rtr = rtr[token];
    userInfo[token][account].updatedAt = block.timestamp;
    emit Stake(account, token, amount);
    return amount;
  }

  function unstake(address account, address token, uint256 amount, bool force) public nonReentrant returns(uint256) {
    require(account == msg.sender || operators[msg.sender] == true, "BridgePoolv2: wrong account");
    if (amount > userInfo[token][account].amount) {
      amount = userInfo[token][account].amount;
    }

    uint256 reward = getReward(account, token);
    if (reward > 0) {
      claimReward(account, token);
    }

    if (amount > 0) {
      uint256 liquidity = 0;
      if (
        (noWrapped == false && token == address(0)) ||
        (noWrapped == true && (token == WETH || token == address(0)))
      ) {
        liquidity = address(this).balance;
      }
      else {
        liquidity = IERC20(token).balanceOf(address(this));
      }

      uint256 unstakeAmount = amount;
      if (liquidity < amount) {
        unstakeAmount = liquidity;
        if (force) {
          emit UnstakeDebt(account, token, amount - liquidity, chainId, unstakeDebtIndex);
          unstakeDebtIndex ++;
        }
        else {
          amount = liquidity;
        }
      }

      if (
        (noWrapped == false && token == address(0)) ||
        (noWrapped == true && (token == WETH || token == address(0)))
      ) {
        (bool success, ) = payable(account).call{value: unstakeAmount}("");
        require(success, "BridgePoolv2: unstake");
      }
      else {
        IERC20(token).safeTransfer(account, unstakeAmount);
      }

      tvl[token] -= amount;
      userInfo[token][account].amount -= amount;
      emit Unstake(account, token, amount, force);
    }
    return amount;
  }

  function forceUnstake(address account, address token, uint256 amount, uint256 _chainId, uint256 _debtIndex) public onlyOperator {
    if (
      (noWrapped == false && token == address(0)) ||
      (noWrapped == true && (token == WETH || token == address(0)))
    ) {
      (bool success, ) = payable(account).call{value: amount}("");
      require(success, "BridgePoolv2: force unstake");
    }
    else {
      IERC20(token).safeTransfer(account, amount);
    }
    emit DebtUnstake(account, token, amount, _chainId, _debtIndex);
  }

  function getReward(address account, address token) public view returns(uint256) {
    uint256 reward = userInfo[token][account].debtReward;
    if (userInfo[token][account].amount > 0) {
      uint256 currentRtr = tvl[token] > 0 ? (totalReward[token] - prevReward[token]) * MULTIPLIER / tvl[token] : 0;
      currentRtr += rtr[token];
      if (currentRtr >= userInfo[token][account].rtr) {
        reward += (currentRtr - userInfo[token][account].rtr) * userInfo[token][account].amount / MULTIPLIER;
      }
    }
    return reward;
  }

  function claimReward(address account, address token) public nonReentrant returns(uint256) {
    uint256 reward = getReward(account, token);
    uint256 debtReward = 0;
    if (reward > 0) {
      uint256 tmpTvl = 0;
      if (
        (noWrapped == false && token == address(0)) ||
        (noWrapped == true && (token == WETH || token == address(0)))
      ) {
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

      if (
        (noWrapped == false && token == address(0)) ||
        (noWrapped == true && (token == WETH || token == address(0)))
      ) {
        (bool success, ) = payable(account).call{value: trasferAmount}("");
        require(success, "BridgePoolv2: claim");
      }
      else {
        IERC20(token).safeTransfer(account, trasferAmount);
      }
    }

    uint256 currentRtr = tvl[token] > 0 ? (totalReward[token] - prevReward[token]) * MULTIPLIER / tvl[token] : 0;
    rtr[token] += currentRtr;
    prevReward[token] = totalReward[token];

    userInfo[token][account].debtReward = debtReward;
    userInfo[token][account].rtr = rtr[token];
    userInfo[token][account].updatedAt = block.timestamp;
    emit Claim(account, token, reward);
    return reward;
  }

  function setManager(address account, bool access) public onlyOwner {
    require(account != address(0), "BridgePoolv2: Wrong account");
    managers[account] = access;
  }

  function setOperator(address account, bool access) public onlyOwner {
    require(account != address(0), "BridgePoolv2: Wrong account");
    operators[account] = access;
  }

  function setNoFeeWallets(address account, bool access) public onlyManager {
    require(account != address(0), "BridgePoolv2: Wrong account");
    noFeeWallets[account] = access;
  }

  function setSwapFee(uint256 _swapFee) public onlyManager {
    require(_swapFee < (coreDecimal / 100), "BridgePoolv2: Too big fee");
    swapFee = _swapFee;
  }

  function setPlatformFee(uint256 _platformFee) public onlyManager {
    require(_platformFee <= coreDecimal, "BridgePoolv2: Too big fee");
    platformFee = _platformFee;
  }

  function setTreasury(address _treasury) public onlyManager {
    require(_treasury != address(0), "BridgePoolv2: Wrong account");
    treasury = _treasury;
  }

  function _cutFee(address _token, uint256 _amount) internal returns(uint256) {
    if (_amount > 0) {
      uint256 fee = _amount * swapFee / coreDecimal;
      uint256 treasuryFee = fee * platformFee / coreDecimal;
      if (treasuryFee > 0) {
        if (
          (noWrapped == false && _token == address(0)) ||
          (noWrapped == true && (_token == WETH || _token == address(0)))
        ) {
          (bool success, ) = payable(treasury).call{value: treasuryFee}("");
          require(success, "BridgePoolv2: Failed cut fee");
        }
        else {
          IERC20(_token).safeTransfer(treasury, treasuryFee);
        }
      }
      if (tvl[_token] > 0) {
        totalReward[_token] += (fee - treasuryFee);
      }
      emit CutFee(treasury, _token, fee, treasuryFee, totalReward[_token], tvl[_token]);
      return _amount - fee;
    }
    return 0;
  }
}
