// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }
}


library SafeMath {

  /**
  * @dev Multiplies two numbers, throws on overflow.
  */
  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    if (a == 0) {
      return 0;
    }
    uint256 c = a * b;
    assert(c / a == b);
    return c;
  }

  /**
  * @dev Integer division of two numbers, truncating the quotient.
  */
  function div(uint256 a, uint256 b) internal pure returns (uint256) {
    // assert(b > 0); // Solidity automatically throws when dividing by 0
    uint256 c = a / b;
    // assert(a == b * c + a % b); // There is no case in which this doesn't hold
    return c;
  }

  /**
  * @dev Substracts two numbers, throws on overflow (i.e. if subtrahend is greater than minuend).
  */
  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    assert(b <= a);
    return a - b;
  }

  /**
  * @dev Adds two numbers, throws on overflow.
  */
  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a + b;
    assert(c >= a);
    return c;
  }

    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a >= b ? a : b;
    }

    /**
     * @dev Returns the smallest of two numbers.
     */
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }

    /**
     * @dev Returns the average of two numbers. The result is rounded towards
     * zero.
     */
    function average(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b) / 2 can overflow.
        return (a & b) + (a ^ b) / 2;
    }

    /**
     * @dev Returns the ceiling of the division of two numbers.
     *
     * This differs from standard division with `/` in that it rounds up instead
     * of rounding down.
     */
    function ceilDiv(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b - 1) / b can overflow on addition, so we distribute.
        return a / b + (a % b == 0 ? 0 : 1);
    }
}


library Strings {
    bytes16 private constant _SYMBOLS = "0123456789abcdef";
    uint8 private constant _ADDRESS_LENGTH = 20;

    /**
     * @dev Converts a `uint256` to its ASCII `string` decimal representation.
     */
    function toString(uint256 value) internal pure returns (string memory) {
        unchecked {
            uint256 length = 1;

            // compute log10(value), and add it to length
            uint256 valueCopy = value;
            if (valueCopy >= 10**64) {
                valueCopy /= 10**64;
                length += 64;
            }
            if (valueCopy >= 10**32) {
                valueCopy /= 10**32;
                length += 32;
            }
            if (valueCopy >= 10**16) {
                valueCopy /= 10**16;
                length += 16;
            }
            if (valueCopy >= 10**8) {
                valueCopy /= 10**8;
                length += 8;
            }
            if (valueCopy >= 10**4) {
                valueCopy /= 10**4;
                length += 4;
            }
            if (valueCopy >= 10**2) {
                valueCopy /= 10**2;
                length += 2;
            }
            if (valueCopy >= 10**1) {
                length += 1;
            }
            // now, length is log10(value) + 1

            string memory buffer = new string(length);
            uint256 ptr;
            /// @solidity memory-safe-assembly
            assembly {
                ptr := add(buffer, add(32, length))
            }
            while (true) {
                ptr--;
                /// @solidity memory-safe-assembly
                assembly {
                    mstore8(ptr, byte(mod(value, 10), _SYMBOLS))
                }
                value /= 10;
                if (value == 0) break;
            }
            return buffer;
        }
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation.
     */
    function toHexString(uint256 value) internal pure returns (string memory) {
        unchecked {
            uint256 length = 1;

            // compute log256(value), and add it to length
            uint256 valueCopy = value;
            if (valueCopy >= 1 << 128) {
                valueCopy >>= 128;
                length += 16;
            }
            if (valueCopy >= 1 << 64) {
                valueCopy >>= 64;
                length += 8;
            }
            if (valueCopy >= 1 << 32) {
                valueCopy >>= 32;
                length += 4;
            }
            if (valueCopy >= 1 << 16) {
                valueCopy >>= 16;
                length += 2;
            }
            if (valueCopy >= 1 << 8) {
                valueCopy >>= 8;
                length += 1;
            }
            // now, length is log256(value) + 1

            return toHexString(value, length);
        }
    }

    /**
     * @dev Converts a `uint256` to its ASCII `string` hexadecimal representation with fixed length.
     */
    function toHexString(uint256 value, uint256 length) internal pure returns (string memory) {
        bytes memory buffer = new bytes(2 * length + 2);
        buffer[0] = "0";
        buffer[1] = "x";
        for (uint256 i = 2 * length + 1; i > 1; --i) {
            buffer[i] = _SYMBOLS[value & 0xf];
            value >>= 4;
        }
        require(value == 0, "Strings: hex length insufficient");
        return string(buffer);
    }

    /**
     * @dev Converts an `address` with fixed length of 20 bytes to its not checksummed ASCII `string` hexadecimal representation.
     */
    function toHexString(address addr) internal pure returns (string memory) {
        return toHexString(uint256(uint160(addr)), _ADDRESS_LENGTH);
    }
}

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor() {
        _transferOwnership(_msgSender());
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        _checkOwner();
        _;
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if the sender is not the owner.
     */
    function _checkOwner() internal view virtual {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby disabling any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _transferOwnership(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}




/**
 * @dev Contract module which allows children to implement an emergency stop
 * mechanism that can be triggered by an authorized account.
 *
 * This module is used through inheritance. It will make available the
 * modifiers `whenNotPaused` and `whenPaused`, which can be applied to
 * the functions of your contract. Note that they will not be pausable by
 * simply including this module, only once the modifiers are put in place.
 */
abstract contract Pausable is Context {
    /**
     * @dev Emitted when the pause is triggered by `account`.
     */
    event Paused(address account);

    /**
     * @dev Emitted when the pause is lifted by `account`.
     */
    event Unpaused(address account);

    bool private _paused;

    /**
     * @dev Initializes the contract in unpaused state.
     */
    constructor() {
        _paused = false;
    }

    /**
     * @dev Modifier to make a function callable only when the contract is not paused.
     *
     * Requirements:
     *
     * - The contract must not be paused.
     */
    modifier whenNotPaused() {
        _requireNotPaused();
        _;
    }

    /**
     * @dev Modifier to make a function callable only when the contract is paused.
     *
     * Requirements:
     *
     * - The contract must be paused.
     */
    modifier whenPaused() {
        _requirePaused();
        _;
    }

    /**
     * @dev Returns true if the contract is paused, and false otherwise.
     */
    function paused() public view virtual returns (bool) {
        return _paused;
    }

    /**
     * @dev Throws if the contract is paused.
     */
    function _requireNotPaused() internal view virtual {
        require(!paused(), "Pausable: paused");
    }

    /**
     * @dev Throws if the contract is not paused.
     */
    function _requirePaused() internal view virtual {
        require(paused(), "Pausable: not paused");
    }

    /**
     * @dev Triggers stopped state.
     *
     * Requirements:
     *
     * - The contract must not be paused.
     */
    function _pause() internal virtual whenNotPaused {
        _paused = true;
        emit Paused(_msgSender());
    }

    /**
     * @dev Returns to normal state.
     *
     * Requirements:
     *
     * - The contract must be paused.
     */
    function _unpause() internal virtual whenPaused {
        _paused = false;
        emit Unpaused(_msgSender());
    }
}



/**
 * @dev Interface of the ERC165 standard, as defined in the
 * https://eips.ethereum.org/EIPS/eip-165[EIP].
 *
 * Implementers can declare support of contract interfaces, which can then be
 * queried by others ({ERC165Checker}).
 *
 * For an implementation, see {ERC165}.
 */
interface IERC165 {
    /**
     * @dev Returns true if this contract implements the interface defined by
     * `interfaceId`. See the corresponding
     * https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified[EIP section]
     * to learn more about how these ids are created.
     *
     * This function call must use less than 30 000 gas.
     */
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}

abstract contract ERC165 is IERC165 {
    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IERC165).interfaceId;
    }
}



interface IVerifySig{
   

    /**
     * 
     * @param claimer  sender
     * @param questWallet  quest's wallet
     * @param questId  questid
     * @param _signature  sigstr
     * @return signer_ wallet
     * @return resMsg_ 
     */   
    function isT2MsgValid(address claimer,address questWallet, uint256 questId,bytes memory _signature) external view returns (address signer_, string memory resMsg_); 
}

contract Utilities is Ownable, Pausable {
    // modifier nonZeroAddress(address _address)    {
    //     require(address(0) != _address, "0 address");
    //     _;
    // }
    // modifier nonZeroLength(uint[] memory _array) {
    //     require(_array.length > 0, "Empty array");
    //     _;
    // }
    // modifier lengthsAreEqual(uint[] memory _array1, uint[] memory _array2) {
    //     require(_array1.length == _array2.length, "Unequal lengths");
    //     _;
    // }
    // modifier onlyEOA() {
    //     /* solhint-disable avoid-tx-origin */
    //     require(msg.sender == tx.origin, "No contracts");
    //     _;
    // }
    function isOwner() internal view returns (bool) {
        return owner() == msg.sender;
    }
}


contract Adminable is Utilities {
    mapping(address => bool) private admins;

    function addAdmin(address _address) public virtual onlyOwner {
        // require(_address.code.length>0," must be a contract's address");
        admins[_address] = true;
    }

    function addAdmins(address[] calldata _addresses) public virtual onlyOwner {
        uint256 len = _addresses.length;
        for (uint256 i = 0; i < len; i++) {
            // require(_addresses[i].code.length>0," must be a contract's address");
            admins[_addresses[i]] = true;
        }
    }

    // function addAdminsInternal(address[] calldata _addresses) internal {
    //     uint256 len = _addresses.length;
    //     for(uint256 i=0;i<len;i++)
    //     {
    //         // require(_addresses[i].code.length>0," must be a contract's address");
    //         admins[_addresses[i]]=true;
    //     }
    // }

    function removeAdmin(address _address) external onlyOwner {
        admins[_address] = false;
    }

    function removeAdmin(address[] calldata _addresses) external onlyOwner {
        uint256 len = _addresses.length;
        for (uint256 i = 0; i < len; i++) {
            admins[_addresses[i]] = false;
        }
    }

    function removeAdminInternal(
        address[] memory _addresses
    ) internal onlyOwner {
        uint256 len = _addresses.length;
        for (uint256 i = 0; i < len; i++) {
            admins[_addresses[i]] = false;
        }
    }

    function setPause(bool _shouldPause) external onlyAdminOrOwner {
        if (_shouldPause) {
            _pause();
        } else {
            _unpause();
        }
    }

    function isAdmin(address _address) public view returns (bool) {
        return admins[_address];
    }

    modifier onlyAdmin() {
        require(admins[msg.sender], "Not admin");
        _;
    }

    modifier onlyAdminOrOwner() {
        require(admins[msg.sender] || isOwner(), "Not admin or owner");
        _;
    }
}





contract T2MultiverseSoulShares is Adminable, ERC165 {
    // Import SafeMath library for uint256
    using SafeMath for uint256;

    address public protocolFeeDestination;

    //k-6:official-4,60000000000000000:40000000000000000,k+o=10%
    uint256 public protocolFeePercent = 0.04 ether;
    uint256 public subjectFeePercent = 0.06 ether;

    //Verify contract's addressqiang
    address private verifySigAddr;
    //signature's address
    address private t2t2SignatureAddr;

    event Trade(
        address trader,
        uint256 subject,
        bool isBuy,
        uint256 shareAmount,
        uint256 ethAmount,
        uint256 protocolEthAmount,
        uint256 subjectEthAmount,
        uint256 supply
    );
    event Deposit(address indexed from, uint256 amount);
    event Withdraw(address indexed from, uint256 amount);

    // SharesSubject => (Holder => Balance)
    mapping(uint256 => mapping(address => uint256)) public sharesBalance;

    // SharesSubject => Supply
    mapping(uint256 => uint256) public sharesSupply;

    mapping(address => uint256) private addr2RoomIdMap;
    mapping(uint256 => address) private roomId2AddrMap;
    mapping(uint256 => uint256) public roomBalance;

    function setContracts(
        address verifySigAddr_,
        address t2t2SigAddr
    ) external onlyAdminOrOwner whenNotPaused returns (bool) {
        require(
            verifySigAddr_ != address(0) && t2t2SigAddr != address(0),
            "T2MultiverseSoulShares:Contracts not set"
        );
        // questMetaDataAddr = questMetaDataAddr_;
        // questMetaData = IQuestMetaData(questMetaDataAddr_);
        verifySigAddr = verifySigAddr_;
        t2t2SignatureAddr = t2t2SigAddr;
        return true;
    }

    function setFeeDestination(
        address _feeDestination
    ) public onlyAdminOrOwner {
        protocolFeeDestination = _feeDestination;
    }

    function setProtocolFeePercent(
        uint256 _feePercent
    ) public onlyAdminOrOwner {
        protocolFeePercent = _feePercent;
    }

    function setSubjectFeePercent(uint256 _feePercent) public onlyAdminOrOwner {
        subjectFeePercent = _feePercent;
    }

    function getPrice(
        uint256 supply,
        uint256 amount
    ) public pure returns (uint256) {
        uint256 sum1 = supply == 0
            ? 0
            : ((supply - 1) * (supply) * (2 * (supply - 1) + 1)) / 6;
        uint256 sum2 = supply == 0 && amount == 1
            ? 0
            : ((supply - 1 + amount) *
                (supply + amount) *
                (2 * (supply - 1 + amount) + 1)) / 6;
        uint256 summation = sum2 - sum1;
        return (summation * 1 ether) / 16000;
    }

    function getBuyPrice(
        uint256 sharesSubject,
        uint256 amount
    ) public view returns (uint256) {
        return getPrice(sharesSupply[sharesSubject], amount);
    }

    function getSellPrice(
        uint256 sharesSubject,
        uint256 amount
    ) public view returns (uint256) {
        return getPrice(sharesSupply[sharesSubject] - amount, amount);
    }

    function getBuyPriceAfterFee(
        uint256 sharesSubject,
        uint256 amount
    ) public view returns (uint256) {
        uint256 price = getBuyPrice(sharesSubject, amount);
        uint256 protocolFee = (price * protocolFeePercent) / 1 ether;
        uint256 subjectFee = (price * subjectFeePercent) / 1 ether;
        return price + protocolFee + subjectFee;
    }

    function getSellPriceAfterFee(
        uint256 sharesSubject,
        uint256 amount
    ) public view returns (uint256) {
        uint256 price = getSellPrice(sharesSubject, amount);
        uint256 protocolFee = (price * protocolFeePercent) / 1 ether;
        uint256 subjectFee = (price * subjectFeePercent) / 1 ether;
        return price - protocolFee - subjectFee;
    }

    function buyShares(uint256 sharesSubject, uint256 amount) public payable {
        uint256 supply = sharesSupply[sharesSubject];
        // require(
        //     supply > 0 || sharesSubject == msg.sender,
        //     "Only the shares' subject can buy the first share"
        // );
        require(supply > 0, "Unable to buy sharesSubject don't running");
        buyInterShares(sharesSubject, amount, supply);
    }

    function sellShares(uint256 sharesSubject, uint256 amount) public payable {
        uint256 supply = sharesSupply[sharesSubject];
        require(supply > amount, "Cannot sell the last share");
        uint256 price = getPrice(supply - amount, amount);
        uint256 protocolFee = (price * protocolFeePercent) / 1 ether;
        uint256 subjectFee = (price * subjectFeePercent) / 1 ether;
        require(
            sharesBalance[sharesSubject][msg.sender] >= amount,
            "Insufficient shares amount "
        );
        sharesBalance[sharesSubject][msg.sender] =
            sharesBalance[sharesSubject][msg.sender] -
            amount;
        sharesSupply[sharesSubject] = supply - amount;
        emit Trade(
            msg.sender,
            sharesSubject,
            false,
            amount,
            price,
            protocolFee,
            subjectFee,
            supply - amount
        );
        uint256 getValue = price - protocolFee - subjectFee;
        (bool success1, ) = msg.sender.call{value: getValue}("");
        (bool success2, ) = protocolFeeDestination.call{value: protocolFee}("");

        // (bool success3, ) = sharesSubject.call{value: subjectFee}("");
        //   require(success1 && success2 && success3, "Unable to send funds");
        roomBalance[sharesSubject] = roomBalance[sharesSubject].add(subjectFee);
        require(success1 && success2, "Unable to send funds");
    }

    function buyInterShares(
        uint256 sharesSubject,
        uint256 amount,
        uint256 supply
    ) internal {
        // uint256 supply = sharesSupply[sharesSubject];
        uint256 price = getPrice(supply, amount);
        uint256 protocolFee = (price * protocolFeePercent) / 1 ether;
        uint256 subjectFee = (price * subjectFeePercent) / 1 ether;

        require(
            msg.value >= price + protocolFee + subjectFee,
            "Insufficient payment"
        );
        sharesBalance[sharesSubject][msg.sender] =
            sharesBalance[sharesSubject][msg.sender] +
            amount;
        sharesSupply[sharesSubject] = supply + amount;
        uint256 balanceValue = msg.value.sub(protocolFee);
        balanceValue = balanceValue.sub(subjectFee);
        emit Trade(
            msg.sender,
            sharesSubject,
            true,
            amount,
            price,
            protocolFee,
            subjectFee,
            supply + amount
        );
        (bool success1, ) = protocolFeeDestination.call{value: protocolFee}("");
        // (bool success2, ) = sharesSubject.call{value: subjectFee}("");
        // require(success1 && success2, "Unable to send funds");
        roomBalance[sharesSubject] = roomBalance[sharesSubject].add(subjectFee);
        require(success1, "Unable to send funds");
    }

    function bindRoomAddr(
        uint256 sharesSubject,
        bytes memory _signature
    ) external whenNotPaused returns (bool) {
        require(verifySinger(sharesSubject, _signature), " singer error");
        address addr_ = tx.origin;
        uint256 supply = sharesSupply[sharesSubject];
        if (supply == 0) {
            buyInterShares(sharesSubject, 1, supply);
        }

        if (roomId2AddrMap[sharesSubject] != address(0)) {
            delete addr2RoomIdMap[roomId2AddrMap[sharesSubject]];
            delete roomId2AddrMap[sharesSubject];
        }
        roomId2AddrMap[sharesSubject] = addr_;
        addr2RoomIdMap[addr_] = sharesSubject;
        return true;
    }

    function getBindRoomAddr(
        uint256 roomId
    ) public view onlyAdminOrOwner returns (address addr) {
        return roomId2AddrMap[roomId];
    }

    fallback() external payable {
        emit Deposit(msg.sender, msg.value);
    }

    receive() external payable {
        emit Deposit(msg.sender, msg.value);
    }

    function verifySinger(
        uint256 roomId,
        bytes memory _signature
    ) internal view returns (bool) {
        IVerifySig verifySig = IVerifySig(verifySigAddr);
        string memory sigStr = "";
        address sig_;
        //验证签名
        (sig_, sigStr) = verifySig.isT2MsgValid(
            tx.origin,
            t2t2SignatureAddr,
            roomId,
            _signature
        );
        // string memory temStr = string.concat(
        //     "T2SoulShares: bindRoomAddr verifySig error sigStr=: ",
        //     sigStr
        // );
        // temStr = string.concat(temStr, ",sig_addr:=");
        // temStr = string.concat(temStr, Strings.toHexString(sig_));
        // require(sig_ == t2t2SignatureAddr, temStr);
        if (sig_ == t2t2SignatureAddr) {
            return true;
        } else {
            return false;
        }
    }

    function withdraw(uint256 sharesSubject) external {
        address to = roomId2AddrMap[sharesSubject];
        uint256 amount_ = roomBalance[sharesSubject];
        require(
            tx.origin == to,
            " room's address or sender's address is error"
        );
        require(amount_ > 0, " shaers key amount error");
        roomBalance[sharesSubject] = 0;
        uint256 amount = address(this).balance;
        require(amount >= amount_, " withdraw amount error! ");
        payable(to).transfer(amount_);
        emit Withdraw(to, amount_);
    }
}