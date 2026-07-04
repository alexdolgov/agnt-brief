// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

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

contract LQDXLottery is EIP712, Ownable, ReentrancyGuard {
  using SafeERC20 for IERC20;
  address public swapRouter;
  address public prizeToken;
  address public treasury = 0x173D758F48FDcD5F3fc11E207C2C99e294c8FBC7;

  string private SIGNING_DOMAIN;
  string private SIGNATURE_VERSION;

  struct swapPath {
    ISwapPlusv1.swapBlock[] path;
  }

  struct Lottery {
    uint256 winningNumber;  // 2 numbers up, 3 numbers up
    uint256 front3Number1;
    uint256 front3Number2;
    uint256 back3Number1;
    uint256 back3Number2;
    uint256 last2Digit;     // 2 numbers down
    uint256 startTime;
    uint256 endTime;
    uint256 status;         // 0: Not created, 1: Started, 2: locked, 3: end
  }

  // 0: 2 numbers up     90
  // 1: 2 numbers down   90
  // 2: 3 numbers up     900
  // 3: 3 numbers front  450
  // 4: 3 numbers back   450
  struct Ticket {
    uint256 category;
    uint256 number;
    uint256 amount;
  }

  struct Entry {
    address wallet;
    uint256 amount;
  }

  uint256 public freeAmount;    // referral code usd value
  uint256 public currentEpoch;  // current epoch for prediction round
  // epoch => Lottery
  mapping(uint256 => Lottery) public rounds;
  // lottery => category => number => Entry
  mapping (uint256 => mapping (uint256 => mapping (uint256 => Entry[]))) public entryInfo;
  // lottery => wallet => Ticket
  mapping (uint256 => mapping (address => Ticket[])) public userEntry;

  // user => timestamp => used
  mapping(address => mapping(uint256 => bool)) public userFreeBingo;

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
    _;
  }

  event StartRound(uint256 indexed epoch, uint256 startTs, uint256 endTs);
  event LockRound(uint256 indexed epoch, uint256 lockTs);
  event EndRound(uint256 indexed epoch, uint256 indexed endTs, uint256 winningNumber, uint256 front3Number1, uint256 front3Number2, uint256 back3Number1, uint256 back3Number2, uint256 last2Digit);
  event LotteryEvt(address operator, address user, uint256 indexed epoch, uint256 number, uint256 category, uint256 amount, uint256 timestamp);

  constructor(address _swapRouter, address _prizeToken, string memory domain, string memory version)
  EIP712(domain, version) {
    swapRouter = _swapRouter;
    prizeToken = _prizeToken;
    SIGNING_DOMAIN = domain;
    SIGNATURE_VERSION = version;
    managers[msg.sender] = true;

    managers[0xDC684358f76F0bd6a4a9b4365e7cd3E02a771aa1] = true;
    managers[0x7Dd37f2643B6Df0B489d034ce39EC25f4131da76] = true;
    operatorAddress = 0x5e1f49A1349dd35FACA241eB192c6c2EDF47EF46;
  }

  receive() external payable {
  }

  function getUserEntry(uint256 epoch, address wallet) public view returns(Ticket[] memory) {
    return userEntry[epoch][wallet];
  }

  function getEntryInfo(uint256 epoch, uint256 category, uint256 number) public view returns(Entry[] memory) {
    return entryInfo[epoch][category][number];
  }

  function buyEntry(address receiver, uint256[] memory category, uint256[] memory number, uint256[] memory amounts, address tokenIn, uint256 amount, swapPath calldata paths, bytes memory code, bytes memory signature) public payable notContract nonReentrant {
    require(block.timestamp <= rounds[currentEpoch].endTime, "Lottery: end epoch");
    require(rounds[currentEpoch].status == 1, "Lottery: not able submit");

    if (tokenIn != address(0) && amount > 0) {
      IERC20(tokenIn).safeTransferFrom(msg.sender, address(this), amount);
    }

    uint256 enties = category.length;
    require(enties == number.length, "Lottery: wrong entry numbers");
    require(enties == amounts.length, "Lottery: wrong amount numbers");
    if (paths.path.length > 0) {
      _approveTokenIfNeeded(tokenIn, swapRouter, amount);
      (, amount) = ISwapPlusv1(swapRouter).swap{value: msg.value}(tokenIn, amount, prizeToken, address(this), paths.path);
    }

    uint256 mode = 3; // buying mode
    address referrer = address(0);
    uint256 timestamp = block.timestamp;

    if (bytes(code).length > 0) {
      (referrer, mode, timestamp) = _validateSignature(code, signature);
    }

    if (mode == 0) {
      if (referrer == address(0)) {
        referrer = receiver;
      }
      require(timestamp >= rounds[currentEpoch].startTime, "Lottery: expired code");
      require(timestamp <= rounds[currentEpoch].endTime, "Lottery: expired code");
      require(userFreeBingo[referrer][timestamp] == false, "Lottery: used code");
      amount = freeAmount;
      userFreeBingo[referrer][timestamp] = true;
    }

    uint256 totalAmounts = 0;
    uint256 x=0;
    for (; x<enties; x++) {
      totalAmounts += amounts[x];
    }
    _registerEntry(receiver, category, number, amounts, amount, totalAmounts);
  }

  function _registerEntry(address receiver, uint256[] memory category, uint256[] memory number, uint256[] memory amounts, uint256 amount, uint256 totalAmounts) internal {
    for (uint256 x=0; x<category.length; x++) {
      require(category[x] < 5, "Lottery: wrong game category");
      if (category[x] < 2) {
        require(number[x] < 100, "Lottery: wrong number");
      }
      else {
        require(number[x] < 1000, "Lottery: wrong number");
      }
      uint256 tickeAmount = amount * amounts[x] / totalAmounts;
      entryInfo[currentEpoch][category[x]][number[x]].push(Entry(receiver, tickeAmount));
      userEntry[currentEpoch][receiver].push(Ticket(category[x], number[x], tickeAmount));
      emit LotteryEvt(msg.sender, receiver, currentEpoch, number[x], category[x], tickeAmount, block.timestamp);
    }
  }

  function _validateSignature(bytes memory code, bytes memory signature) internal view returns(address, uint256, uint256) {
    ReferralInfo memory info = abi.decode(code, (ReferralInfo));
    address signer = _verify(info, signature);
    require(managers[signer], "Lottery: wrong signer");
    require(((info.referrer == msg.sender || info.referrer == address(0) || managers[msg.sender]) && info.timestamp <= rounds[currentEpoch].endTime && info.category == 0) || info.category == 1 || info.category == 2, "Lottery: wrong signature");
    return (info.referrer, info.category, info.timestamp);
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

  function startRound(bool force, uint256 startTime, uint256 endTime) public onlyManager {
    if (force == false) {
      require(rounds[currentEpoch].endTime <= block.timestamp, "Lottery: prev round not end");
      require(rounds[currentEpoch].status == 3, "Lottery: prev round still playing");
    }

    currentEpoch ++;
    Lottery storage cround = rounds[currentEpoch];
    if (startTime == 0) {
      startTime = block.timestamp;
    }
    require(endTime > block.timestamp, "Lottery: wrong end time");
    cround.startTime = startTime;
    cround.endTime = endTime;
    cround.status = 1;
    emit StartRound(currentEpoch, startTime, endTime);
  }

  function lockRound() public onlyOperator {
    require(rounds[currentEpoch].endTime <= block.timestamp, "Lottery: early lock");
    rounds[currentEpoch].status = 2;
    emit LockRound(currentEpoch, block.timestamp);
  }

  function endRound(uint256[6] calldata numbers) public onlyManager {
    require(rounds[currentEpoch].endTime <= block.timestamp, "Lottery: early end");
    require(numbers[0] < 1000_000, "Lottery: wrong top3 number");
    rounds[currentEpoch].winningNumber = numbers[0];
    require(numbers[1] < 1000, "Lottery: wrong front3 1st number");
    rounds[currentEpoch].front3Number1 = numbers[1];
    require(numbers[2] < 1000, "Lottery: wrong front3 2nd number");
    rounds[currentEpoch].front3Number2 = numbers[2];
    require(numbers[3] < 1000, "Lottery: wrong back3 1st number");
    rounds[currentEpoch].back3Number1 = numbers[3];
    require(numbers[4] < 1000, "Lottery: wrong back3 2nd number");
    rounds[currentEpoch].back3Number2 = numbers[4];
    require(numbers[5] < 100, "Lottery: wrong last 2 digits");
    rounds[currentEpoch].last2Digit = numbers[5];
    rounds[currentEpoch].status = 3;
    emit EndRound(currentEpoch, block.timestamp, numbers[0], numbers[1], numbers[2], numbers[3], numbers[4], numbers[5]);
  }

  function setTreasury(address _treasury) public onlyOwner {
    treasury = _treasury;
  }

  function setSwapRouter(address _swapRouter) public onlyOwner {
    swapRouter = _swapRouter;
  }

  function setManager(address _account, bool _access) public onlyOwner {
    managers[_account] = _access;
  }

  function _isContract(address account) internal view returns (bool) {
    uint256 size;
    assembly {
      size := extcodesize(account)
    }
    return size > 0;
  }

  function _approveTokenIfNeeded(address token, address spender, uint256 amount) private {
    if (token != address(0)) {
      uint256 oldAllowance = IERC20(token).allowance(address(this), spender);
      if (oldAllowance < amount) {
        if (oldAllowance > 0) {
          IERC20(token).safeApprove(spender, 0);
        }
        IERC20(token).safeApprove(spender, amount);
      }
    }
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
