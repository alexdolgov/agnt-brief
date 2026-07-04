// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import { ECDSA } from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import { ERC20Permit, ERC20 } from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import { ERC20Capped } from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import { Pausable } from "@openzeppelin/contracts/utils/Pausable.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { EnumerableSet } from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import { OFT } from "@layerzerolabs/lz-evm-oapp-v2/contracts/oft/OFT.sol";

contract aBTC is OFT, ERC20Permit, ERC20Capped, Pausable {
    using EnumerableSet for EnumerableSet.AddressSet;

    bytes32 public constant MINT_TYPEHASH = keccak256("Mint(address user,uint256 value,bytes32 txid,uint256 index)");

    uint256 public constant MIN_THRESHOLD = 2;

    bool public immutable startChain;

    uint256 public fee;
    address public feeRecipient;

    uint256 public threshold = 3;
    uint256 public currentBurnId;

    EnumerableSet.AddressSet private signerSet;

    mapping(bytes32 => mapping(uint256 => bool)) public txNullifier;
    mapping(uint256 => address) public burnOwner;

    mapping(address => bool) public isBlackListed;

    error InvalidSigner(uint256 index, address signer);
    error ThresholdError(uint256 hope, uint256 have);
    error IsBlackListed();

    event Mint(address indexed user, bytes32 txid, uint256 index, uint256 value);
    event Burn(address indexed user, uint256 burnId, uint256 netAmount, uint256 fee, string btcAddress);
    event Declare(uint256 burnId, string btcAddress);
    event FeeUpdated(uint256 oldFee, uint256 newFee);
    event FeeRecipientUpdated(address oldRecipient, address newRecipient);
    event SetSigner(address signer, bool enable);
    event SetThreshold(uint256 oldThreshold, uint256 newThreshold);

    event DestroyedBlackFunds(address blackListedUser, uint256 balance);
    event AddedBlackList(address user);
    event RemovedBlackList(address user);

    constructor(
        address _initialOwner,
        uint256 _initialCap,
        address[] memory _signers,
        address _endpoint,
        uint256 _startChainID
    )
        OFT('aBTC', 'aBTC', _endpoint, _initialOwner)
        ERC20Permit("aBTC")
        ERC20Capped(_initialCap)
        Ownable(_initialOwner)
    {
        startChain = _startChainID == block.chainid;
        feeRecipient = _initialOwner;
        require(_signers.length >= threshold, "NSignatures: Invalid threshold");
        for (uint256 i = 0; i < _signers.length;) {
            signerSet.add(_signers[i]);
            unchecked {
                i++;
            }
        }
    }

    function sharedDecimals() public pure override returns (uint8) {
        return 8;
    }

    function mint(address to, uint256 amount, bytes32 txid, uint256 index, bytes[] calldata signatures) external {
        require(startChain, "only startChain");
        require(!txNullifier[txid][index], "aBTC: Transaction already processed");
        _checkSignatures(to, amount, txid, index, signatures);
        txNullifier[txid][index] = true;
        _mint(to, amount);
        emit Mint(to, txid, index, amount);
    }

    function burn(uint256 amount, string memory btcAddress) external {
        require(startChain, "only startChain");
        if (fee > 0) {
            _transfer(msg.sender, feeRecipient, fee);
        }
        _burn(msg.sender, amount);
        uint256 burnId = currentBurnId++;
        burnOwner[burnId] = msg.sender;
        emit Burn(msg.sender, burnId, amount, fee, btcAddress);
    }

    function declare(uint256 burnId, string memory btcAddress) external {
        require(burnOwner[burnId] == msg.sender, "invalid burn owner");
        emit Declare(burnId, btcAddress);
    }

    function setPause(bool pause_) external onlyOwner {
        if (pause_) {
            _pause();
        } else {
            _unpause();
        }
    }

    function updateFee(uint256 newFee) external onlyOwner {
        uint256 oldFee = fee;
        fee = newFee;
        emit FeeUpdated(oldFee, newFee);
    }

    function updateFeeRecipient(address newRecipient) external onlyOwner {
        address oldRecipient = feeRecipient;
        feeRecipient = newRecipient;
        emit FeeRecipientUpdated(oldRecipient, newRecipient);
    }

    function setSigner(address signer, bool enable) external onlyOwner {
        if (enable) {
            signerSet.add(signer);
        } else {
            signerSet.remove(signer);
        }
        emit SetSigner(signer, enable);
    }

    function setThreshold(uint256 newThreshold) external onlyOwner {
        uint256 old = threshold;
        require(newThreshold >= MIN_THRESHOLD, "invalid threshold");
        threshold = newThreshold;
        emit SetThreshold(old, newThreshold);
    }

    function useNonce() external {
        _useNonce(msg.sender);
    }

    function getSigners() external view returns (address[] memory) {
        return signerSet.values();
    }

    function addBlackList(address _evilUser) external onlyOwner {
        isBlackListed[_evilUser] = true;
        emit AddedBlackList(_evilUser);
    }

    function removeBlackList(address _clearedUser) external onlyOwner {
        isBlackListed[_clearedUser] = false;
        emit RemovedBlackList(_clearedUser);
    }

    function destroyBlackFunds(address _blackListedUser) external onlyOwner {
        require(isBlackListed[_blackListedUser]);
        uint256 dirtyFunds = balanceOf(_blackListedUser);
        require(dirtyFunds > 0, "dirty fund zero");

        isBlackListed[_blackListedUser] = false;
        _burn(_blackListedUser, dirtyFunds);
        isBlackListed[_blackListedUser] = true;
        emit DestroyedBlackFunds(_blackListedUser, dirtyFunds);
    }

    function _checkSignatures(
        address user,
        uint256 value,
        bytes32 txid,
        uint256 index,
        bytes[] memory signatures
    ) private view {
        uint256 count = signatures.length;
        if (count < threshold) {
            revert ThresholdError(threshold, count);
        }

        bytes32 structHash = keccak256(abi.encode(MINT_TYPEHASH, user, value, txid, index));
        bytes32 hash = _hashTypedDataV4(structHash);
        address last = address(0);
        for (uint256 i = 0; i < count;) {
            address signer = ECDSA.recover(hash, signatures[i]);
            if (signer <= last || !signerSet.contains(signer)) {
                revert InvalidSigner(i, signer);
            }
            last = signer;
            unchecked {
                i++;
            }
        }
    }

    function _update(address from, address to, uint256 value)
        internal
        virtual
        override(ERC20Capped, ERC20)
        whenNotPaused
    {
        if (isBlackListed[from]) {
            revert IsBlackListed();
        }
        ERC20Capped._update(from, to, value);
    }
}
