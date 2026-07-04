// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

interface ISwapPlusv1 {
  struct swapRouter {
    string platform;
    address tokenIn;
    address tokenOut;
    uint256 amountOutMin;
    uint256 meta; // fee, flag(stable), 0=v2
    uint256 percent;
  }
  struct swapLine {
    swapRouter[] swaps;
  }
  struct swapBlock {
    swapLine[] lines;
  }

  function swap(address tokenIn, uint256 amount, address tokenOut, address recipient, swapBlock[] calldata swBlocks) external payable returns(uint256, uint256);
}

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

library Strings {
  bytes16 private constant _HEX_SYMBOLS = "0123456789abcdef";
  uint8 private constant _ADDRESS_LENGTH = 20;
  
  function toString(uint256 value) internal pure returns (string memory) {
    if (value == 0) {
      return "0";
    }
    uint256 temp = value;
    uint256 digits;
    while (temp != 0) {
      digits++;
      temp /= 10;
    }
    bytes memory buffer = new bytes(digits);
    while (value != 0) {
      digits -= 1;
      buffer[digits] = bytes1(uint8(48 + uint256(value % 10)));
      value /= 10;
    }
    return string(buffer);
  }

  function toHexString(uint256 value) internal pure returns (string memory) {
    if (value == 0) {
      return "0x00";
    }
    uint256 temp = value;
    uint256 length = 0;
    while (temp != 0) {
      length++;
      temp >>= 8;
    }
    return toHexString(value, length);
  }

  function toHexString(uint256 value, uint256 length) internal pure returns (string memory) {
    bytes memory buffer = new bytes(2 * length + 2);
    buffer[0] = "0";
    buffer[1] = "x";
    for (uint256 i = 2 * length + 1; i > 1; --i) {
        buffer[i] = _HEX_SYMBOLS[value & 0xf];
        value >>= 4;
    }
    require(value == 0, "Strings: hex length insufficient");
    return string(buffer);
  }

  function toHexString(address addr) internal pure returns (string memory) {
    return toHexString(uint256(uint160(addr)), _ADDRESS_LENGTH);
  }
}

library ECDSA {
  enum RecoverError {
    NoError,
    InvalidSignature,
    InvalidSignatureLength,
    InvalidSignatureS,
    InvalidSignatureV
  }

  function _throwError(RecoverError error) private pure {
    if (error == RecoverError.NoError) {
      return; // no error: do nothing
    } else if (error == RecoverError.InvalidSignature) {
      revert("ECDSA: invalid signature");
    } else if (error == RecoverError.InvalidSignatureLength) {
      revert("ECDSA: invalid signature length");
    } else if (error == RecoverError.InvalidSignatureS) {
      revert("ECDSA: invalid signature 's' value");
    } else if (error == RecoverError.InvalidSignatureV) {
      revert("ECDSA: invalid signature 'v' value");
    }
  }

  function tryRecover(bytes32 hash, bytes memory signature) internal pure returns (address, RecoverError) {
    if (signature.length == 65) {
      bytes32 r;
      bytes32 s;
      uint8 v;
      assembly {
        r := mload(add(signature, 0x20))
        s := mload(add(signature, 0x40))
        v := byte(0, mload(add(signature, 0x60)))
      }
      return tryRecover(hash, v, r, s);
    } else {
      return (address(0), RecoverError.InvalidSignatureLength);
    }
  }

  function recover(bytes32 hash, bytes memory signature) internal pure returns (address) {
    (address recovered, RecoverError error) = tryRecover(hash, signature);
    _throwError(error);
    return recovered;
  }

  function tryRecover(
    bytes32 hash,
    bytes32 r,
    bytes32 vs
  ) internal pure returns (address, RecoverError) {
    bytes32 s = vs & bytes32(0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
    uint8 v = uint8((uint256(vs) >> 255) + 27);
    return tryRecover(hash, v, r, s);
  }

  function recover(
    bytes32 hash,
    bytes32 r,
    bytes32 vs
  ) internal pure returns (address) {
    (address recovered, RecoverError error) = tryRecover(hash, r, vs);
    _throwError(error);
    return recovered;
  }
  
  function tryRecover(
    bytes32 hash,
    uint8 v,
    bytes32 r,
    bytes32 s
  ) internal pure returns (address, RecoverError) {
    if (uint256(s) > 0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D576E7357A4501DDFE92F46681B20A0) {
      return (address(0), RecoverError.InvalidSignatureS);
    }
    if (v != 27 && v != 28) {
      return (address(0), RecoverError.InvalidSignatureV);
    }

    address signer = ecrecover(hash, v, r, s);
    if (signer == address(0)) {
      return (address(0), RecoverError.InvalidSignature);
    }

    return (signer, RecoverError.NoError);
  }

  function recover(
    bytes32 hash,
    uint8 v,
    bytes32 r,
    bytes32 s
  ) internal pure returns (address) {
    (address recovered, RecoverError error) = tryRecover(hash, v, r, s);
    _throwError(error);
    return recovered;
  }

  function toEthSignedMessageHash(bytes32 hash) internal pure returns (bytes32) {
    return keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32", hash));
  }

  function toEthSignedMessageHash(bytes memory s) internal pure returns (bytes32) {
    return keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n", Strings.toString(s.length), s));
  }

  function toTypedDataHash(bytes32 domainSeparator, bytes32 structHash) internal pure returns (bytes32) {
    return keccak256(abi.encodePacked("\x19\x01", domainSeparator, structHash));
  }
}

abstract contract EIP712 {
  bytes32 private immutable _CACHED_DOMAIN_SEPARATOR;
  uint256 private immutable _CACHED_CHAIN_ID;
  address private immutable _CACHED_THIS;

  bytes32 private immutable _HASHED_NAME;
  bytes32 private immutable _HASHED_VERSION;
  bytes32 private immutable _TYPE_HASH;

  constructor(string memory name, string memory version) {
    bytes32 hashedName = keccak256(bytes(name));
    bytes32 hashedVersion = keccak256(bytes(version));
    bytes32 typeHash = keccak256(
      "EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)"
    );
    _HASHED_NAME = hashedName;
    _HASHED_VERSION = hashedVersion;
    _CACHED_CHAIN_ID = block.chainid;
    _CACHED_DOMAIN_SEPARATOR = _buildDomainSeparator(typeHash, hashedName, hashedVersion);
    _CACHED_THIS = address(this);
    _TYPE_HASH = typeHash;
  }

  function _domainSeparatorV4() internal view returns (bytes32) {
    if (address(this) == _CACHED_THIS && block.chainid == _CACHED_CHAIN_ID) {
      return _CACHED_DOMAIN_SEPARATOR;
    } else {
      return _buildDomainSeparator(_TYPE_HASH, _HASHED_NAME, _HASHED_VERSION);
    }
  }

  function _buildDomainSeparator(
    bytes32 typeHash,
    bytes32 nameHash,
    bytes32 versionHash
  ) private view returns (bytes32) {
    return keccak256(abi.encode(typeHash, nameHash, versionHash, block.chainid, address(this)));
  }

  function _hashTypedDataV4(bytes32 structHash) internal view virtual returns (bytes32) {
    return ECDSA.toTypedDataHash(_domainSeparatorV4(), structHash);
  }
}

contract BtcBingov2 is EIP712, Ownable, ReentrancyGuard {
  using SafeERC20 for IERC20;
  address public swapRouter;
  address public prizeToken;
  address public treasury;

  uint256 public jackpotPercent = 40 * 10**10;
  uint256 public referrerPercent = 5 * 10**10;
  uint256 public discountPercent = 50 * 10**10;
  bool public discountMode = true;
  uint256 public discountDelta = 10 minutes;
  uint256 public claimFee = 1 * 10**10;
  uint256 public coreDecimals = 100 * 10**10;
  uint256 public bufferSeconds = 30;
  uint256 public rewardWinnder2 = 1000;   // USD for 2 decimal winner
  uint256 public rewardWinnder1 = 25;     // USD for 0 decimal winner

  string private SIGNING_DOMAIN;
  string private SIGNATURE_VERSION;

  struct swapPath {
    ISwapPlusv1.swapBlock[] path;
  }

  struct Round {
    uint256 epoch;
    uint256 startTimestamp;
    uint256 lockTimestamp;
    uint256 closeTimestamp;
    uint256 closePrice;
    uint256 initAmount;
    uint256 extraAmount;
    uint256 rewardPrice;
    uint256 winner4Reward;
    uint256 winner4Price;
    uint256[] winner2Price;
    uint256[] winner1Price;
    bool bingoLocked; // default false
  }

  uint256 public currentEpoch; // current epoch for prediction round
  // epoch => Round
  mapping(uint256 => Round) public rounds;
  // epoch => Prices
  mapping(uint256 => uint256[]) public pricesPerEpoch;
  // epoch => Price => users
  mapping(uint256 => mapping(uint256 => address[])) public usersPerPrice;
  // user => epoch => prices
  mapping(address => mapping(uint256 => uint256[])) public userBingoInfos;
  // user => epoch => claimed
  mapping(address => mapping(uint256 => bool)) public userBingoClaimed;
  // user => epoch => last 5 entities ts
  mapping(address => mapping(uint256 => uint256)) public userLast5;
  mapping(address => mapping(uint256 => bool)) public userLast5Used;
  // user => timestamp => used
  mapping(address => mapping(uint256 => bool)) public userFreeBingo;

  // number of entries => price
  mapping(uint256 => uint256) public bingoPrice;

  struct ReferralInfo {
    address referrer;
    uint256 timestamp;
    uint256 category;                 // 0 free bingo, 1 marketing, 2 discount
  }

  address public operatorAddress;     // address of the operator
  mapping (address => bool) public managers;

  modifier onlyManager() {
    require(managers[msg.sender], "LC Refer: !manager");
    _;
  }

  modifier onlyOperator() {
    require(msg.sender == operatorAddress, "Not operator");
    _;
  }

  modifier notContract() {
    require(!_isContract(msg.sender), "Contract not allowed");
    require(msg.sender == tx.origin, "Proxy contract not allowed");
    _;
  }

  event StartRound(uint256 indexed epoch, uint256 startTs, uint256 lockTs, uint256 endTs);
  event LockRound(uint256 indexed epoch, uint256 lockTs);
  event EndRound(uint256 indexed epoch, uint256 indexed endTs, uint256 price);
  event BingoEvt(address operator, address user, uint256 indexed epoch, uint256 price, uint256 category, uint256 timestamp);
  event WinningPrices(uint256 indexed epoch, uint256 win4, uint256[] win2, uint256[] win1);
  event WinnersNumber(uint256 indexed epoch, uint256 win4, uint256 win2, uint256 win1);
  event SetRewardInfo(uint256 indexed epoch, uint256 winner4Reward, uint256 rewardPrice, uint256 initAmount);
  event BitcoinBingoFee(address token, uint256 fee, address treasury);

  constructor(address _swapRouter, address _prizeToken, string memory domain, string memory version)
  EIP712(domain, version) {
    swapRouter = _swapRouter;
    prizeToken = _prizeToken;
    SIGNING_DOMAIN = domain;
    SIGNATURE_VERSION = version;
    managers[msg.sender] = true;

    bingoPrice[1] = 25 * 10**16;
    bingoPrice[5] = 100 * 10**16;

    managers[0xDC684358f76F0bd6a4a9b4365e7cd3E02a771aa1] = true;
    operatorAddress = 0x5e1f49A1349dd35FACA241eB192c6c2EDF47EF46;
  }

  receive() external payable {
  }

  function _getWinners(uint256 epoch, uint256[] memory prices) internal view returns(address[] memory) {
    uint256 len = prices.length;
    uint256 winnerLen = 0;
    for (uint256 x = 0; x < len; x ++) {
      winnerLen += usersPerPrice[epoch][prices[x]].length;
    }
    address[] memory winner = new address[](winnerLen);
    uint256 z = 0;
    uint256 userLen = 0;
    for (uint256 x = 0; x < len; x ++) {
      userLen = usersPerPrice[epoch][prices[x]].length;
      for (uint256 y = 0; y < userLen; y ++) {
        winner[z] = usersPerPrice[epoch][prices[x]][y];
        z ++;
      }
    }
    return winner;
  }

  function getWinners(uint256 epoch) public view returns(address[] memory, address[] memory, address[] memory) {
    address[] memory winner4 = usersPerPrice[epoch][rounds[epoch].winner4Price];
    address[] memory winner2 = _getWinners(epoch, rounds[epoch].winner2Price);
    address[] memory winner1 = _getWinners(epoch, rounds[epoch].winner1Price);
    return (winner4, winner2, winner1);
  }

  function _validatePrice(uint256 price, uint256 btc) internal pure returns(uint256) {
    if (price == btc) return 4;
    if ((price / 100) == (btc / 100)) return 2;
    if ((price / 10000) == (btc / 10000)) return 1;
    return 0;
  }

  function _checkAllWinnners(uint256 epoch) internal {
    uint256 len = pricesPerEpoch[epoch].length;
    uint256 number4winners = 0;
    uint256 number2winners = 0;
    uint256 number1winners = 0;
    for (uint256 x=0; x<len; x++) {
      uint256 win = _validatePrice(pricesPerEpoch[epoch][x], rounds[epoch].closePrice);
      if (win == 4) {
        rounds[epoch].winner4Price = pricesPerEpoch[epoch][x];
        number4winners = usersPerPrice[epoch][pricesPerEpoch[epoch][x]].length;
      }
      else if (win == 2) {
        rounds[epoch].winner2Price.push(pricesPerEpoch[epoch][x]);
        number2winners += usersPerPrice[epoch][pricesPerEpoch[epoch][x]].length;
      }
      else if (win == 1) {
        rounds[epoch].winner1Price.push(pricesPerEpoch[epoch][x]);
        number1winners += usersPerPrice[epoch][pricesPerEpoch[epoch][x]].length;
      }
    }
    emit WinningPrices(epoch, rounds[epoch].winner4Price, rounds[epoch].winner2Price, rounds[epoch].winner1Price);
    emit WinnersNumber(epoch, number4winners, number2winners, number1winners);
  }

  function _addSingleBingo(address user, uint256 price, uint256 category) internal {
    uint256 len = pricesPerEpoch[currentEpoch].length;
    bool found = false;
    for (uint256 x=0; x<len; x++) {
      if (pricesPerEpoch[currentEpoch][x] == price) {
        found = true;
        break;
      }
    }
    if (found == false) {
      pricesPerEpoch[currentEpoch].push(price);
    }
    usersPerPrice[currentEpoch][price].push(user);
    userBingoInfos[user][currentEpoch].push(price);
    emit BingoEvt(msg.sender, user, currentEpoch, price, category, block.timestamp);
  }

  function _registerBingoInfo(address user, uint256[] memory prices, uint256 category) internal {
    uint256 len = prices.length;
    for (uint256 x = 0; x < len; x++) {
      _addSingleBingo(user, prices[x], category);
    }
  }

  function bingo(address receiver, uint256[] memory price, address tokenIn, uint256 amount, swapPath calldata paths, bytes memory code, bytes memory signature) public payable notContract nonReentrant {
    require(rounds[currentEpoch].bingoLocked == false, "BtcBingov2: locked epoch");

    if (tokenIn != address(0) && amount > 0) {
      IERC20(tokenIn).safeTransferFrom(msg.sender, address(this), amount);
    }

    uint256 enties = price.length;
    require(bingoPrice[enties] > 0, "BtcBingov2: wrong entry numbers");
    if (paths.path.length > 0) {
      _approveTokenIfNeeded(tokenIn, swapRouter, amount);
      (, amount) = ISwapPlusv1(swapRouter).swap{value: msg.value}(tokenIn, amount, prizeToken, address(this), paths.path);
    }

    uint256 mode = 3; // buying mode
    address referrer = address(0);

    if (bytes(code).length > 0) {
      (referrer, mode) = _validateSignature(code, signature);
    }

    if (discountMode == true) {
      uint256 last5Ts = userLast5[receiver][currentEpoch];
      if (last5Ts != 0 && userLast5Used[receiver][last5Ts] == false && last5Ts + discountDelta >= block.timestamp) {
        mode = 2;
        userLast5Used[receiver][last5Ts] = true;
      }
      else {
        userLast5[receiver][currentEpoch] = block.timestamp;
        mode = 3;
      }
    }

    if (mode == 2) { // discount mode
      require(bingoPrice[enties] * discountPercent / coreDecimals <= amount, "BtcBingov2: few fund");
      if (bingoPrice[enties] * discountPercent / coreDecimals < amount) {
        IERC20(prizeToken).safeTransfer(msg.sender, amount - bingoPrice[enties] * discountPercent / coreDecimals);
        amount = bingoPrice[enties] * discountPercent / coreDecimals;
      }
    }
    else if (mode == 1 || mode == 3) { // 1: marketing 3: buy mode
      require(bingoPrice[enties] <= amount, "BtcBingov2: few fund");
      if (bingoPrice[enties] < amount) {
        IERC20(prizeToken).safeTransfer(msg.sender, amount - bingoPrice[enties]);
        amount = bingoPrice[enties];
      }
    }
    else if (mode == 0) {
      require(userFreeBingo[referrer][currentEpoch] == false, "BtcBingov2: used code");
      amount = 0;
      userFreeBingo[referrer][currentEpoch] = true;
    }

    if (treasury != address(0) && amount > 0) {
      uint256 treasuryAmount = amount - amount * jackpotPercent / coreDecimals;
      if (referrer != address(0)) {
        uint256 referrerAmount = amount * referrerPercent / coreDecimals;
        treasuryAmount -= referrerAmount;
        if (referrerAmount > 0) IERC20(prizeToken).safeTransfer(referrer, referrerAmount);
      }
      if (treasuryAmount > 0) IERC20(prizeToken).safeTransfer(treasury, treasuryAmount);
    }

    rounds[currentEpoch].extraAmount += (amount * jackpotPercent / coreDecimals);
    _registerBingoInfo(receiver, price, mode);
  }

  function getReward(address account, uint256 epoch) public view returns(uint256) {
    if (userBingoClaimed[account][epoch] == true) return 0;
    uint256 priceLen = userBingoInfos[account][epoch].length;
    uint256 amount = 0;
    for (uint256 x=0; x<priceLen; x++) {
      uint256 win = _validatePrice(userBingoInfos[account][epoch][x], rounds[epoch].closePrice);
      if (win == 4) {
        return rounds[epoch].winner4Reward;
      }
      else if (win == 2) {
        amount += (rewardWinnder2 * coreDecimals / rounds[epoch].rewardPrice);
      }
      else if (win == 1) {
        amount += (rewardWinnder1 * coreDecimals / rounds[epoch].rewardPrice);
      }
    }
    return amount;
  }

  function claim(uint256[] memory epochs) public nonReentrant {
    uint256 epochLen = epochs.length;
    uint256 rewardAmount = 0;
    for (uint256 i=0; i<epochLen; i++) {
      uint256 epoch = epochs[i];
      rewardAmount += getReward(msg.sender, epoch);
      userBingoClaimed[msg.sender][epoch] = true;
    }
    rewardAmount = _cutFee(prizeToken, rewardAmount);
    if (rewardAmount > 0) {
      IERC20(prizeToken).safeTransfer(msg.sender, rewardAmount);
    }
  }

  function _startRound(uint256 extraAmount, uint256 playPeriod, uint256 lockPeriod) internal {
    currentEpoch ++;
    Round storage cround = rounds[currentEpoch];
    cround.startTimestamp = block.timestamp;
    cround.lockTimestamp = playPeriod;
    cround.closeTimestamp = lockPeriod;
    cround.extraAmount = extraAmount;
    cround.epoch = currentEpoch;

    emit StartRound(currentEpoch, block.timestamp, cround.lockTimestamp, cround.closeTimestamp);
  }

  function startRound(bool force, uint256 extraAmount, uint256 playPeriod, uint256 lockPeriod) public onlyOperator returns(uint256) {
    if (force == false) {
      require(rounds[currentEpoch].closePrice > 0, "BtcBingov2: current epoch not end");
      require(rounds[currentEpoch].closeTimestamp >= block.timestamp, "BtcBingov2: current epoch playing");
    }

    _startRound(extraAmount, playPeriod, lockPeriod);
    return rounds[currentEpoch].lockTimestamp;
  }

  function genesisLockRound() external onlyOperator returns(uint256) {
    require(block.timestamp <= rounds[currentEpoch].lockTimestamp + bufferSeconds);
    rounds[currentEpoch].bingoLocked = true;
    emit LockRound(currentEpoch, block.timestamp);
    return rounds[currentEpoch].closeTimestamp;
  }

  function endRound(uint256 btcPrice) public onlyOperator {
    rounds[currentEpoch].closePrice = btcPrice;
    emit EndRound(currentEpoch, block.timestamp, btcPrice);
    _checkAllWinnners(currentEpoch);
  }

  function setWinnerReward(uint256 epoch, uint256 totalAmount, uint256 numberOf4Winners, uint256 initAmount, uint256 prizePrice) public onlyOperator {
    rounds[epoch].winner4Reward = numberOf4Winners > 0 ? totalAmount / numberOf4Winners : 0;
    rounds[epoch].initAmount = initAmount;
    rounds[epoch].rewardPrice = prizePrice;
    emit SetRewardInfo(epoch, rounds[epoch].winner4Reward, rounds[epoch].rewardPrice, rounds[epoch].initAmount);
  }

  function setTreasury(address _treasury) public onlyOwner {
    treasury = _treasury;
  }

  function setJackpotPercent(uint256 _jackpotPercent) public onlyOwner {
    jackpotPercent = _jackpotPercent;
  }

  function setReferrerPercent(uint256 _referrerPercent) public onlyOwner {
    referrerPercent = _referrerPercent;
  }

  function setDiscountPercent(uint256 _discountPercent) public onlyOwner {
    discountPercent = _discountPercent;
  }

  function setClaimFee(uint256 _claimFee) public onlyOwner {
    claimFee = _claimFee;
  }

  function setRewardWinnder2(uint256 _rewardWinnder2) public onlyOwner {
    rewardWinnder2 = _rewardWinnder2;
  }

  function setRewardWinnder1(uint256 _rewardWinnder1) public onlyOwner {
    rewardWinnder1 = _rewardWinnder1;
  }

  function setBingoPrice(uint256 entity, uint256 price) public onlyOwner {
    bingoPrice[entity] = price;
  }

  function setDiscountMode(bool _discountMode) public onlyOwner {
    discountMode = _discountMode;
  }

  function setDiscountDelta(uint256 _discountDelta) public onlyOwner {
    discountDelta = _discountDelta;
  }

  function setOperatorAddress(address _operatorAddress) public onlyOwner {
    operatorAddress = _operatorAddress;
  }

  function setManager(address _account, bool _access) public onlyOwner {
    managers[_account] = _access;
  }

  function checkSign(bytes memory code, bytes memory signature) public view returns(address, address, uint256, uint256) {
    ReferralInfo memory info = abi.decode(code, (ReferralInfo));
    address signer = _verify(info, signature);
    return (signer, info.referrer, info.timestamp, info.category);
  }

  function _validateSignature(bytes memory code, bytes memory signature) internal view returns(address, uint256) {
    ReferralInfo memory info = abi.decode(code, (ReferralInfo));
    address signer = _verify(info, signature);
    require(managers[signer], "BtcBingov2: wrong signature");
    require(((info.referrer == msg.sender || managers[msg.sender]) && info.timestamp <= rounds[currentEpoch].lockTimestamp && info.category == 0) || info.category == 1 || info.category == 2, "BtcBingov2: wrong signature");
    return (info.referrer, info.category);
  }

  function _hash(ReferralInfo memory info) internal view returns (bytes32) {
    return _hashTypedDataV4(keccak256(abi.encode(
      keccak256("ReferralInfo(address referrer,uint256 timestamp,uint256 category)"),
      info.referrer,
      info.timestamp,
      info.category
    )));
  }

  function _verify(ReferralInfo memory info, bytes memory signature) internal view returns (address) {
    bytes32 digest = _hash(info);
    return ECDSA.recover(digest, signature);
  }

  function _isContract(address account) internal view returns (bool) {
    uint256 size;
    assembly {
      size := extcodesize(account)
    }
    return size > 0;
  }

  function _approveTokenIfNeeded(address token, address spender, uint256 amount) private {
    if (IERC20(token).allowance(address(this), spender) < amount) {
      IERC20(token).safeApprove(spender, 0);
      IERC20(token).safeApprove(spender, type(uint256).max);
    }
  }

  function _cutFee(address _token, uint256 _amount) internal returns(uint256) {
    if (_amount > 0) {
      uint256 fee = _amount * claimFee / coreDecimals;
      if (fee > 0) {
        if (_token == address(0)) {
          (bool success, ) = payable(treasury).call{value: fee}("");
          require(success, "BtcBingov2: Failed cut fee");
        }
        else {
          IERC20(_token).safeTransfer(treasury, fee);
        }
        emit BitcoinBingoFee(_token, fee, treasury);
      }
      return _amount - fee;
    }
    return 0;
  }

  function withdraw(address token, uint256 amount) public onlyOwner {
    if (token == address(0)) {
      if (amount > address(this).balance) {
        amount = address(this).balance;
      }
      if (amount > 0) {
        (bool success1, ) = msg.sender.call{value: amount}("");
        require(success1, "BtcBingov2: Faild withdraw");
      }
    }
    else {
      uint256 balance = IERC20(token).balanceOf(address(this));
      if (amount > balance) {
        amount = balance;
      }
      if (amount > 0) {
        IERC20(token).safeTransfer(msg.sender, amount);
      }
    }
  }
}