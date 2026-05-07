// ============================================================
// FILE: lib/ERC721A-Upgradeable/contracts/ERC721A__Initializable.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @dev This is a base contract to aid in writing upgradeable diamond facet contracts, or any kind of contract that will be deployed
 * behind a proxy. Since proxied contracts do not make use of a constructor, it's common to move constructor logic to an
 * external initializer function, usually called `initialize`. It then becomes necessary to protect this initializer
 * function so it can only be called once. The {initializer} modifier provided by this contract will have this effect.
 *
 * TIP: To avoid leaving the proxy in an uninitialized state, the initializer function should be called as early as
 * possible by providing the encoded function call as the `_data` argument to {ERC1967Proxy-constructor}.
 *
 * CAUTION: When used with inheritance, manual care must be taken to not invoke a parent initializer twice, or to ensure
 * that all initializers are idempotent. This is not verified automatically as constructors are by Solidity.
 */

import {ERC721A__InitializableStorage} from './ERC721A__InitializableStorage.sol';

abstract contract ERC721A__Initializable {
    using ERC721A__InitializableStorage for ERC721A__InitializableStorage.Layout;

    /**
     * @dev Modifier to protect an initializer function from being invoked twice.
     */
    modifier initializerERC721A() {
        // If the contract is initializing we ignore whether _initialized is set in order to support multiple
        // inheritance patterns, but we only do this in the context of a constructor, because in other contexts the
        // contract may have been reentered.
        require(
            ERC721A__InitializableStorage.layout()._initializing
                ? _isConstructor()
                : !ERC721A__InitializableStorage.layout()._initialized,
            'ERC721A__Initializable: contract is already initialized'
        );

        bool isTopLevelCall = !ERC721A__InitializableStorage.layout()._initializing;
        if (isTopLevelCall) {
            ERC721A__InitializableStorage.layout()._initializing = true;
            ERC721A__InitializableStorage.layout()._initialized = true;
        }

        _;

        if (isTopLevelCall) {
            ERC721A__InitializableStorage.layout()._initializing = false;
        }
    }

    /**
     * @dev Modifier to protect an initialization function so that it can only be invoked by functions with the
     * {initializer} modifier, directly or indirectly.
     */
    modifier onlyInitializingERC721A() {
        require(
            ERC721A__InitializableStorage.layout()._initializing,
            'ERC721A__Initializable: contract is not initializing'
        );
        _;
    }

    /// @dev Returns true if and only if the function is running in the constructor
    function _isConstructor() private view returns (bool) {
        // extcodesize checks the size of the code stored in an address, and
        // address returns the current address. Since the code is still not
        // deployed when running a constructor, any checks on its code size will
        // yield zero, making it an effective way to detect if a contract is
        // under construction or not.
        address self = address(this);
        uint256 cs;
        assembly {
            cs := extcodesize(self)
        }
        return cs == 0;
    }
}

// ============================================================
// FILE: lib/ERC721A-Upgradeable/contracts/ERC721A__InitializableStorage.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/**
 * @dev This is a base storage for the  initialization function for upgradeable diamond facet contracts
 **/

library ERC721A__InitializableStorage {
    struct Layout {
        /*
         * Indicates that the contract has been initialized.
         */
        bool _initialized;
        /*
         * Indicates that the contract is in the process of being initialized.
         */
        bool _initializing;
    }

    bytes32 internal constant STORAGE_SLOT = keccak256('ERC721A.contracts.storage.initializable.facet');

    function layout() internal pure returns (Layout storage l) {
        bytes32 slot = STORAGE_SLOT;
        assembly {
            l.slot := slot
        }
    }
}

// ============================================================
// FILE: lib/ERC721A-Upgradeable/contracts/ERC721AStorage.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

library ERC721AStorage {
    // Bypass for a `--via-ir` bug (https://github.com/chiru-labs/ERC721A/pull/364).
    struct TokenApprovalRef {
        address value;
    }

    struct Layout {
        // =============================================================
        //                            STORAGE
        // =============================================================

        // The next token ID to be minted.
        uint256 _currentIndex;
        // The number of tokens burned.
        uint256 _burnCounter;
        // Token name
        string _name;
        // Token symbol
        string _symbol;
        // Mapping from token ID to ownership details
        // An empty struct value does not necessarily mean the token is unowned.
        // See {_packedOwnershipOf} implementation for details.
        //
        // Bits Layout:
        // - [0..159]   `addr`
        // - [160..223] `startTimestamp`
        // - [224]      `burned`
        // - [225]      `nextInitialized`
        // - [232..255] `extraData`
        mapping(uint256 => uint256) _packedOwnerships;
        // Mapping owner address to address data.
        //
        // Bits Layout:
        // - [0..63]    `balance`
        // - [64..127]  `numberMinted`
        // - [128..191] `numberBurned`
        // - [192..255] `aux`
        mapping(address => uint256) _packedAddressData;
        // Mapping from token ID to approved address.
        mapping(uint256 => ERC721AStorage.TokenApprovalRef) _tokenApprovals;
        // Mapping from owner to operator approvals
        mapping(address => mapping(address => bool)) _operatorApprovals;
    }

    bytes32 internal constant STORAGE_SLOT = keccak256('ERC721A.contracts.storage.ERC721A');

    function layout() internal pure returns (Layout storage l) {
        bytes32 slot = STORAGE_SLOT;
        assembly {
            l.slot := slot
        }
    }
}

// ============================================================
// FILE: lib/ERC721A-Upgradeable/contracts/ERC721AUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// ERC721A Contracts v4.2.3
// Creator: Chiru Labs

pragma solidity ^0.8.4;

import './IERC721AUpgradeable.sol';
import {ERC721AStorage} from './ERC721AStorage.sol';
import './ERC721A__Initializable.sol';

/**
 * @dev Interface of ERC721 token receiver.
 */
interface ERC721A__IERC721ReceiverUpgradeable {
    function onERC721Received(
        address operator,
        address from,
        uint256 tokenId,
        bytes calldata data
    ) external returns (bytes4);
}

/**
 * @title ERC721A
 *
 * @dev Implementation of the [ERC721](https://eips.ethereum.org/EIPS/eip-721)
 * Non-Fungible Token Standard, including the Metadata extension.
 * Optimized for lower gas during batch mints.
 *
 * Token IDs are minted in sequential order (e.g. 0, 1, 2, 3, ...)
 * starting from `_startTokenId()`.
 *
 * Assumptions:
 *
 * - An owner cannot have more than 2**64 - 1 (max value of uint64) of supply.
 * - The maximum token ID cannot exceed 2**256 - 1 (max value of uint256).
 */
contract ERC721AUpgradeable is ERC721A__Initializable, IERC721AUpgradeable {
    using ERC721AStorage for ERC721AStorage.Layout;

    // =============================================================
    //                           CONSTANTS
    // =============================================================

    // Mask of an entry in packed address data.
    uint256 private constant _BITMASK_ADDRESS_DATA_ENTRY = (1 << 64) - 1;

    // The bit position of `numberMinted` in packed address data.
    uint256 private constant _BITPOS_NUMBER_MINTED = 64;

    // The bit position of `numberBurned` in packed address data.
    uint256 private constant _BITPOS_NUMBER_BURNED = 128;

    // The bit position of `aux` in packed address data.
    uint256 private constant _BITPOS_AUX = 192;

    // Mask of all 256 bits in packed address data except the 64 bits for `aux`.
    uint256 private constant _BITMASK_AUX_COMPLEMENT = (1 << 192) - 1;

    // The bit position of `startTimestamp` in packed ownership.
    uint256 private constant _BITPOS_START_TIMESTAMP = 160;

    // The bit mask of the `burned` bit in packed ownership.
    uint256 private constant _BITMASK_BURNED = 1 << 224;

    // The bit position of the `nextInitialized` bit in packed ownership.
    uint256 private constant _BITPOS_NEXT_INITIALIZED = 225;

    // The bit mask of the `nextInitialized` bit in packed ownership.
    uint256 private constant _BITMASK_NEXT_INITIALIZED = 1 << 225;

    // The bit position of `extraData` in packed ownership.
    uint256 private constant _BITPOS_EXTRA_DATA = 232;

    // Mask of all 256 bits in a packed ownership except the 24 bits for `extraData`.
    uint256 private constant _BITMASK_EXTRA_DATA_COMPLEMENT = (1 << 232) - 1;

    // The mask of the lower 160 bits for addresses.
    uint256 private constant _BITMASK_ADDRESS = (1 << 160) - 1;

    // The maximum `quantity` that can be minted with {_mintERC2309}.
    // This limit is to prevent overflows on the address data entries.
    // For a limit of 5000, a total of 3.689e15 calls to {_mintERC2309}
    // is required to cause an overflow, which is unrealistic.
    uint256 private constant _MAX_MINT_ERC2309_QUANTITY_LIMIT = 5000;

    // The `Transfer` event signature is given by:
    // `keccak256(bytes("Transfer(address,address,uint256)"))`.
    bytes32 private constant _TRANSFER_EVENT_SIGNATURE =
        0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef;

    // =============================================================
    //                          CONSTRUCTOR
    // =============================================================

    function __ERC721A_init(string memory name_, string memory symbol_) internal onlyInitializingERC721A {
        __ERC721A_init_unchained(name_, symbol_);
    }

    function __ERC721A_init_unchained(string memory name_, string memory symbol_) internal onlyInitializingERC721A {
        ERC721AStorage.layout()._name = name_;
        ERC721AStorage.layout()._symbol = symbol_;
        ERC721AStorage.layout()._currentIndex = _startTokenId();
    }

    // =============================================================
    //                   TOKEN COUNTING OPERATIONS
    // =============================================================

    /**
     * @dev Returns the starting token ID.
     * To change the starting token ID, please override this function.
     */
    function _startTokenId() internal view virtual returns (uint256) {
        return 0;
    }

    /**
     * @dev Returns the next token ID to be minted.
     */
    function _nextTokenId() internal view virtual returns (uint256) {
        return ERC721AStorage.layout()._currentIndex;
    }

    /**
     * @dev Returns the total number of tokens in existence.
     * Burned tokens will reduce the count.
     * To get the total number of tokens minted, please see {_totalMinted}.
     */
    function totalSupply() public view virtual override returns (uint256) {
        // Counter underflow is impossible as _burnCounter cannot be incremented
        // more than `_currentIndex - _startTokenId()` times.
        unchecked {
            return ERC721AStorage.layout()._currentIndex - ERC721AStorage.layout()._burnCounter - _startTokenId();
        }
    }

    /**
     * @dev Returns the total amount of tokens minted in the contract.
     */
    function _totalMinted() internal view virtual returns (uint256) {
        // Counter underflow is impossible as `_currentIndex` does not decrement,
        // and it is initialized to `_startTokenId()`.
        unchecked {
            return ERC721AStorage.layout()._currentIndex - _startTokenId();
        }
    }

    /**
     * @dev Returns the total number of tokens burned.
     */
    function _totalBurned() internal view virtual returns (uint256) {
        return ERC721AStorage.layout()._burnCounter;
    }

    // =============================================================
    //                    ADDRESS DATA OPERATIONS
    // =============================================================

    /**
     * @dev Returns the number of tokens in `owner`'s account.
     */
    function balanceOf(address owner) public view virtual override returns (uint256) {
        if (owner == address(0)) _revert(BalanceQueryForZeroAddress.selector);
        return ERC721AStorage.layout()._packedAddressData[owner] & _BITMASK_ADDRESS_DATA_ENTRY;
    }

    /**
     * Returns the number of tokens minted by `owner`.
     */
    function _numberMinted(address owner) internal view returns (uint256) {
        return
            (ERC721AStorage.layout()._packedAddressData[owner] >> _BITPOS_NUMBER_MINTED) & _BITMASK_ADDRESS_DATA_ENTRY;
    }

    /**
     * Returns the number of tokens burned by or on behalf of `owner`.
     */
    function _numberBurned(address owner) internal view returns (uint256) {
        return
            (ERC721AStorage.layout()._packedAddressData[owner] >> _BITPOS_NUMBER_BURNED) & _BITMASK_ADDRESS_DATA_ENTRY;
    }

    /**
     * Returns the auxiliary data for `owner`. (e.g. number of whitelist mint slots used).
     */
    function _getAux(address owner) internal view returns (uint64) {
        return uint64(ERC721AStorage.layout()._packedAddressData[owner] >> _BITPOS_AUX);
    }

    /**
     * Sets the auxiliary data for `owner`. (e.g. number of whitelist mint slots used).
     * If there are multiple variables, please pack them into a uint64.
     */
    function _setAux(address owner, uint64 aux) internal virtual {
        uint256 packed = ERC721AStorage.layout()._packedAddressData[owner];
        uint256 auxCasted;
        // Cast `aux` with assembly to avoid redundant masking.
        assembly {
            auxCasted := aux
        }
        packed = (packed & _BITMASK_AUX_COMPLEMENT) | (auxCasted << _BITPOS_AUX);
        ERC721AStorage.layout()._packedAddressData[owner] = packed;
    }

    // =============================================================
    //                            IERC165
    // =============================================================

    /**
     * @dev Returns true if this contract implements the interface defined by
     * `interfaceId`. See the corresponding
     * [EIP section](https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified)
     * to learn more about how these ids are created.
     *
     * This function call must use less than 30000 gas.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        // The interface IDs are constants representing the first 4 bytes
        // of the XOR of all function selectors in the interface.
        // See: [ERC165](https://eips.ethereum.org/EIPS/eip-165)
        // (e.g. `bytes4(i.functionA.selector ^ i.functionB.selector ^ ...)`)
        return
            interfaceId == 0x01ffc9a7 || // ERC165 interface ID for ERC165.
            interfaceId == 0x80ac58cd || // ERC165 interface ID for ERC721.
            interfaceId == 0x5b5e139f; // ERC165 interface ID for ERC721Metadata.
    }

    // =============================================================
    //                        IERC721Metadata
    // =============================================================

    /**
     * @dev Returns the token collection name.
     */
    function name() public view virtual override returns (string memory) {
        return ERC721AStorage.layout()._name;
    }

    /**
     * @dev Returns the token collection symbol.
     */
    function symbol() public view virtual override returns (string memory) {
        return ERC721AStorage.layout()._symbol;
    }

    /**
     * @dev Returns the Uniform Resource Identifier (URI) for `tokenId` token.
     */
    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        if (!_exists(tokenId)) _revert(URIQueryForNonexistentToken.selector);

        string memory baseURI = _baseURI();
        return bytes(baseURI).length != 0 ? string(abi.encodePacked(baseURI, _toString(tokenId))) : '';
    }

    /**
     * @dev Base URI for computing {tokenURI}. If set, the resulting URI for each
     * token will be the concatenation of the `baseURI` and the `tokenId`. Empty
     * by default, it can be overridden in child contracts.
     */
    function _baseURI() internal view virtual returns (string memory) {
        return '';
    }

    // =============================================================
    //                     OWNERSHIPS OPERATIONS
    // =============================================================

    /**
     * @dev Returns the owner of the `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function ownerOf(uint256 tokenId) public view virtual override returns (address) {
        return address(uint160(_packedOwnershipOf(tokenId)));
    }

    /**
     * @dev Gas spent here starts off proportional to the maximum mint batch size.
     * It gradually moves to O(1) as tokens get transferred around over time.
     */
    function _ownershipOf(uint256 tokenId) internal view virtual returns (TokenOwnership memory) {
        return _unpackedOwnership(_packedOwnershipOf(tokenId));
    }

    /**
     * @dev Returns the unpacked `TokenOwnership` struct at `index`.
     */
    function _ownershipAt(uint256 index) internal view virtual returns (TokenOwnership memory) {
        return _unpackedOwnership(ERC721AStorage.layout()._packedOwnerships[index]);
    }

    /**
     * @dev Returns whether the ownership slot at `index` is initialized.
     * An uninitialized slot does not necessarily mean that the slot has no owner.
     */
    function _ownershipIsInitialized(uint256 index) internal view virtual returns (bool) {
        return ERC721AStorage.layout()._packedOwnerships[index] != 0;
    }

    /**
     * @dev Initializes the ownership slot minted at `index` for efficiency purposes.
     */
    function _initializeOwnershipAt(uint256 index) internal virtual {
        if (ERC721AStorage.layout()._packedOwnerships[index] == 0) {
            ERC721AStorage.layout()._packedOwnerships[index] = _packedOwnershipOf(index);
        }
    }

    /**
     * Returns the packed ownership data of `tokenId`.
     */
    function _packedOwnershipOf(uint256 tokenId) private view returns (uint256 packed) {
        if (_startTokenId() <= tokenId) {
            packed = ERC721AStorage.layout()._packedOwnerships[tokenId];
            // If the data at the starting slot does not exist, start the scan.
            if (packed == 0) {
                if (tokenId >= ERC721AStorage.layout()._currentIndex) _revert(OwnerQueryForNonexistentToken.selector);
                // Invariant:
                // There will always be an initialized ownership slot
                // (i.e. `ownership.addr != address(0) && ownership.burned == false`)
                // before an unintialized ownership slot
                // (i.e. `ownership.addr == address(0) && ownership.burned == false`)
                // Hence, `tokenId` will not underflow.
                //
                // We can directly compare the packed value.
                // If the address is zero, packed will be zero.
                for (;;) {
                    unchecked {
                        packed = ERC721AStorage.layout()._packedOwnerships[--tokenId];
                    }
                    if (packed == 0) continue;
                    if (packed & _BITMASK_BURNED == 0) return packed;
                    // Otherwise, the token is burned, and we must revert.
                    // This handles the case of batch burned tokens, where only the burned bit
                    // of the starting slot is set, and remaining slots are left uninitialized.
                    _revert(OwnerQueryForNonexistentToken.selector);
                }
            }
            // Otherwise, the data exists and we can skip the scan.
            // This is possible because we have already achieved the target condition.
            // This saves 2143 gas on transfers of initialized tokens.
            // If the token is not burned, return `packed`. Otherwise, revert.
            if (packed & _BITMASK_BURNED == 0) return packed;
        }
        _revert(OwnerQueryForNonexistentToken.selector);
    }

    /**
     * @dev Returns the unpacked `TokenOwnership` struct from `packed`.
     */
    function _unpackedOwnership(uint256 packed) private pure returns (TokenOwnership memory ownership) {
        ownership.addr = address(uint160(packed));
        ownership.startTimestamp = uint64(packed >> _BITPOS_START_TIMESTAMP);
        ownership.burned = packed & _BITMASK_BURNED != 0;
        ownership.extraData = uint24(packed >> _BITPOS_EXTRA_DATA);
    }

    /**
     * @dev Packs ownership data into a single uint256.
     */
    function _packOwnershipData(address owner, uint256 flags) private view returns (uint256 result) {
        assembly {
            // Mask `owner` to the lower 160 bits, in case the upper bits somehow aren't clean.
            owner := and(owner, _BITMASK_ADDRESS)
            // `owner | (block.timestamp << _BITPOS_START_TIMESTAMP) | flags`.
            result := or(owner, or(shl(_BITPOS_START_TIMESTAMP, timestamp()), flags))
        }
    }

    /**
     * @dev Returns the `nextInitialized` flag set if `quantity` equals 1.
     */
    function _nextInitializedFlag(uint256 quantity) private pure returns (uint256 result) {
        // For branchless setting of the `nextInitialized` flag.
        assembly {
            // `(quantity == 1) << _BITPOS_NEXT_INITIALIZED`.
            result := shl(_BITPOS_NEXT_INITIALIZED, eq(quantity, 1))
        }
    }

    // =============================================================
    //                      APPROVAL OPERATIONS
    // =============================================================

    /**
     * @dev Gives permission to `to` to transfer `tokenId` token to another account. See {ERC721A-_approve}.
     *
     * Requirements:
     *
     * - The caller must own the token or be an approved operator.
     */
    function approve(address to, uint256 tokenId) public payable virtual override {
        _approve(to, tokenId, true);
    }

    /**
     * @dev Returns the account approved for `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function getApproved(uint256 tokenId) public view virtual override returns (address) {
        if (!_exists(tokenId)) _revert(ApprovalQueryForNonexistentToken.selector);

        return ERC721AStorage.layout()._tokenApprovals[tokenId].value;
    }

    /**
     * @dev Approve or remove `operator` as an operator for the caller.
     * Operators can call {transferFrom} or {safeTransferFrom}
     * for any token owned by the caller.
     *
     * Requirements:
     *
     * - The `operator` cannot be the caller.
     *
     * Emits an {ApprovalForAll} event.
     */
    function setApprovalForAll(address operator, bool approved) public virtual override {
        ERC721AStorage.layout()._operatorApprovals[_msgSenderERC721A()][operator] = approved;
        emit ApprovalForAll(_msgSenderERC721A(), operator, approved);
    }

    /**
     * @dev Returns if the `operator` is allowed to manage all of the assets of `owner`.
     *
     * See {setApprovalForAll}.
     */
    function isApprovedForAll(address owner, address operator) public view virtual override returns (bool) {
        return ERC721AStorage.layout()._operatorApprovals[owner][operator];
    }

    /**
     * @dev Returns whether `tokenId` exists.
     *
     * Tokens can be managed by their owner or approved accounts via {approve} or {setApprovalForAll}.
     *
     * Tokens start existing when they are minted. See {_mint}.
     */
    function _exists(uint256 tokenId) internal view virtual returns (bool result) {
        if (_startTokenId() <= tokenId) {
            if (tokenId < ERC721AStorage.layout()._currentIndex) {
                uint256 packed;
                while ((packed = ERC721AStorage.layout()._packedOwnerships[tokenId]) == 0) --tokenId;
                result = packed & _BITMASK_BURNED == 0;
            }
        }
    }

    /**
     * @dev Returns whether `msgSender` is equal to `approvedAddress` or `owner`.
     */
    function _isSenderApprovedOrOwner(
        address approvedAddress,
        address owner,
        address msgSender
    ) private pure returns (bool result) {
        assembly {
            // Mask `owner` to the lower 160 bits, in case the upper bits somehow aren't clean.
            owner := and(owner, _BITMASK_ADDRESS)
            // Mask `msgSender` to the lower 160 bits, in case the upper bits somehow aren't clean.
            msgSender := and(msgSender, _BITMASK_ADDRESS)
            // `msgSender == owner || msgSender == approvedAddress`.
            result := or(eq(msgSender, owner), eq(msgSender, approvedAddress))
        }
    }

    /**
     * @dev Returns the storage slot and value for the approved address of `tokenId`.
     */
    function _getApprovedSlotAndAddress(uint256 tokenId)
        private
        view
        returns (uint256 approvedAddressSlot, address approvedAddress)
    {
        ERC721AStorage.TokenApprovalRef storage tokenApproval = ERC721AStorage.layout()._tokenApprovals[tokenId];
        // The following is equivalent to `approvedAddress = _tokenApprovals[tokenId].value`.
        assembly {
            approvedAddressSlot := tokenApproval.slot
            approvedAddress := sload(approvedAddressSlot)
        }
    }

    // =============================================================
    //                      TRANSFER OPERATIONS
    // =============================================================

    /**
     * @dev Transfers `tokenId` from `from` to `to`.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must be owned by `from`.
     * - If the caller is not `from`, it must be approved to move this token
     * by either {approve} or {setApprovalForAll}.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(
        address from,
        address to,
        uint256 tokenId
    ) public payable virtual override {
        uint256 prevOwnershipPacked = _packedOwnershipOf(tokenId);

        // Mask `from` to the lower 160 bits, in case the upper bits somehow aren't clean.
        from = address(uint160(uint256(uint160(from)) & _BITMASK_ADDRESS));

        if (address(uint160(prevOwnershipPacked)) != from) _revert(TransferFromIncorrectOwner.selector);

        (uint256 approvedAddressSlot, address approvedAddress) = _getApprovedSlotAndAddress(tokenId);

        // The nested ifs save around 20+ gas over a compound boolean condition.
        if (!_isSenderApprovedOrOwner(approvedAddress, from, _msgSenderERC721A()))
            if (!isApprovedForAll(from, _msgSenderERC721A())) _revert(TransferCallerNotOwnerNorApproved.selector);

        _beforeTokenTransfers(from, to, tokenId, 1);

        // Clear approvals from the previous owner.
        assembly {
            if approvedAddress {
                // This is equivalent to `delete _tokenApprovals[tokenId]`.
                sstore(approvedAddressSlot, 0)
            }
        }

        // Underflow of the sender's balance is impossible because we check for
        // ownership above and the recipient's balance can't realistically overflow.
        // Counter overflow is incredibly unrealistic as `tokenId` would have to be 2**256.
        unchecked {
            // We can directly increment and decrement the balances.
            --ERC721AStorage.layout()._packedAddressData[from]; // Updates: `balance -= 1`.
            ++ERC721AStorage.layout()._packedAddressData[to]; // Updates: `balance += 1`.

            // Updates:
            // - `address` to the next owner.
            // - `startTimestamp` to the timestamp of transfering.
            // - `burned` to `false`.
            // - `nextInitialized` to `true`.
            ERC721AStorage.layout()._packedOwnerships[tokenId] = _packOwnershipData(
                to,
                _BITMASK_NEXT_INITIALIZED | _nextExtraData(from, to, prevOwnershipPacked)
            );

            // If the next slot may not have been initialized (i.e. `nextInitialized == false`) .
            if (prevOwnershipPacked & _BITMASK_NEXT_INITIALIZED == 0) {
                uint256 nextTokenId = tokenId + 1;
                // If the next slot's address is zero and not burned (i.e. packed value is zero).
                if (ERC721AStorage.layout()._packedOwnerships[nextTokenId] == 0) {
                    // If the next slot is within bounds.
                    if (nextTokenId != ERC721AStorage.layout()._currentIndex) {
                        // Initialize the next slot to maintain correctness for `ownerOf(tokenId + 1)`.
                        ERC721AStorage.layout()._packedOwnerships[nextTokenId] = prevOwnershipPacked;
                    }
                }
            }
        }

        // Mask `to` to the lower 160 bits, in case the upper bits somehow aren't clean.
        uint256 toMasked = uint256(uint160(to)) & _BITMASK_ADDRESS;
        assembly {
            // Emit the `Transfer` event.
            log4(
                0, // Start of data (0, since no data).
                0, // End of data (0, since no data).
                _TRANSFER_EVENT_SIGNATURE, // Signature.
                from, // `from`.
                toMasked, // `to`.
                tokenId // `tokenId`.
            )
        }
        if (toMasked == 0) _revert(TransferToZeroAddress.selector);

        _afterTokenTransfers(from, to, tokenId, 1);
    }

    /**
     * @dev Equivalent to `safeTransferFrom(from, to, tokenId, '')`.
     */
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId
    ) public payable virtual override {
        safeTransferFrom(from, to, tokenId, '');
    }

    /**
     * @dev Safely transfers `tokenId` token from `from` to `to`.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must exist and be owned by `from`.
     * - If the caller is not `from`, it must be approved to move this token
     * by either {approve} or {setApprovalForAll}.
     * - If `to` refers to a smart contract, it must implement
     * {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId,
        bytes memory _data
    ) public payable virtual override {
        transferFrom(from, to, tokenId);
        if (to.code.length != 0)
            if (!_checkContractOnERC721Received(from, to, tokenId, _data)) {
                _revert(TransferToNonERC721ReceiverImplementer.selector);
            }
    }

    /**
     * @dev Hook that is called before a set of serially-ordered token IDs
     * are about to be transferred. This includes minting.
     * And also called before burning one token.
     *
     * `startTokenId` - the first token ID to be transferred.
     * `quantity` - the amount to be transferred.
     *
     * Calling conditions:
     *
     * - When `from` and `to` are both non-zero, `from`'s `tokenId` will be
     * transferred to `to`.
     * - When `from` is zero, `tokenId` will be minted for `to`.
     * - When `to` is zero, `tokenId` will be burned by `from`.
     * - `from` and `to` are never both zero.
     */
    function _beforeTokenTransfers(
        address from,
        address to,
        uint256 startTokenId,
        uint256 quantity
    ) internal virtual {}

    /**
     * @dev Hook that is called after a set of serially-ordered token IDs
     * have been transferred. This includes minting.
     * And also called after one token has been burned.
     *
     * `startTokenId` - the first token ID to be transferred.
     * `quantity` - the amount to be transferred.
     *
     * Calling conditions:
     *
     * - When `from` and `to` are both non-zero, `from`'s `tokenId` has been
     * transferred to `to`.
     * - When `from` is zero, `tokenId` has been minted for `to`.
     * - When `to` is zero, `tokenId` has been burned by `from`.
     * - `from` and `to` are never both zero.
     */
    function _afterTokenTransfers(
        address from,
        address to,
        uint256 startTokenId,
        uint256 quantity
    ) internal virtual {}

    /**
     * @dev Private function to invoke {IERC721Receiver-onERC721Received} on a target contract.
     *
     * `from` - Previous owner of the given token ID.
     * `to` - Target address that will receive the token.
     * `tokenId` - Token ID to be transferred.
     * `_data` - Optional data to send along with the call.
     *
     * Returns whether the call correctly returned the expected magic value.
     */
    function _checkContractOnERC721Received(
        address from,
        address to,
        uint256 tokenId,
        bytes memory _data
    ) private returns (bool) {
        try
            ERC721A__IERC721ReceiverUpgradeable(to).onERC721Received(_msgSenderERC721A(), from, tokenId, _data)
        returns (bytes4 retval) {
            return retval == ERC721A__IERC721ReceiverUpgradeable(to).onERC721Received.selector;
        } catch (bytes memory reason) {
            if (reason.length == 0) {
                _revert(TransferToNonERC721ReceiverImplementer.selector);
            }
            assembly {
                revert(add(32, reason), mload(reason))
            }
        }
    }

    // =============================================================
    //                        MINT OPERATIONS
    // =============================================================

    /**
     * @dev Mints `quantity` tokens and transfers them to `to`.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - `quantity` must be greater than 0.
     *
     * Emits a {Transfer} event for each mint.
     */
    function _mint(address to, uint256 quantity) internal virtual {
        uint256 startTokenId = ERC721AStorage.layout()._currentIndex;
        if (quantity == 0) _revert(MintZeroQuantity.selector);

        _beforeTokenTransfers(address(0), to, startTokenId, quantity);

        // Overflows are incredibly unrealistic.
        // `balance` and `numberMinted` have a maximum limit of 2**64.
        // `tokenId` has a maximum limit of 2**256.
        unchecked {
            // Updates:
            // - `address` to the owner.
            // - `startTimestamp` to the timestamp of minting.
            // - `burned` to `false`.
            // - `nextInitialized` to `quantity == 1`.
            ERC721AStorage.layout()._packedOwnerships[startTokenId] = _packOwnershipData(
                to,
                _nextInitializedFlag(quantity) | _nextExtraData(address(0), to, 0)
            );

            // Updates:
            // - `balance += quantity`.
            // - `numberMinted += quantity`.
            //
            // We can directly add to the `balance` and `numberMinted`.
            ERC721AStorage.layout()._packedAddressData[to] += quantity * ((1 << _BITPOS_NUMBER_MINTED) | 1);

            // Mask `to` to the lower 160 bits, in case the upper bits somehow aren't clean.
            uint256 toMasked = uint256(uint160(to)) & _BITMASK_ADDRESS;

            if (toMasked == 0) _revert(MintToZeroAddress.selector);

            uint256 end = startTokenId + quantity;
            uint256 tokenId = startTokenId;

            do {
                assembly {
                    // Emit the `Transfer` event.
                    log4(
                        0, // Start of data (0, since no data).
                        0, // End of data (0, since no data).
                        _TRANSFER_EVENT_SIGNATURE, // Signature.
                        0, // `address(0)`.
                        toMasked, // `to`.
                        tokenId // `tokenId`.
                    )
                }
                // The `!=` check ensures that large values of `quantity`
                // that overflows uint256 will make the loop run out of gas.
            } while (++tokenId != end);

            ERC721AStorage.layout()._currentIndex = end;
        }
        _afterTokenTransfers(address(0), to, startTokenId, quantity);
    }

    /**
     * @dev Mints `quantity` tokens and transfers them to `to`.
     *
     * This function is intended for efficient minting only during contract creation.
     *
     * It emits only one {ConsecutiveTransfer} as defined in
     * [ERC2309](https://eips.ethereum.org/EIPS/eip-2309),
     * instead of a sequence of {Transfer} event(s).
     *
     * Calling this function outside of contract creation WILL make your contract
     * non-compliant with the ERC721 standard.
     * For full ERC721 compliance, substituting ERC721 {Transfer} event(s) with the ERC2309
     * {ConsecutiveTransfer} event is only permissible during contract creation.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - `quantity` must be greater than 0.
     *
     * Emits a {ConsecutiveTransfer} event.
     */
    function _mintERC2309(address to, uint256 quantity) internal virtual {
        uint256 startTokenId = ERC721AStorage.layout()._currentIndex;
        if (to == address(0)) _revert(MintToZeroAddress.selector);
        if (quantity == 0) _revert(MintZeroQuantity.selector);
        if (quantity > _MAX_MINT_ERC2309_QUANTITY_LIMIT) _revert(MintERC2309QuantityExceedsLimit.selector);

        _beforeTokenTransfers(address(0), to, startTokenId, quantity);

        // Overflows are unrealistic due to the above check for `quantity` to be below the limit.
        unchecked {
            // Updates:
            // - `balance += quantity`.
            // - `numberMinted += quantity`.
            //
            // We can directly add to the `balance` and `numberMinted`.
            ERC721AStorage.layout()._packedAddressData[to] += quantity * ((1 << _BITPOS_NUMBER_MINTED) | 1);

            // Updates:
            // - `address` to the owner.
            // - `startTimestamp` to the timestamp of minting.
            // - `burned` to `false`.
            // - `nextInitialized` to `quantity == 1`.
            ERC721AStorage.layout()._packedOwnerships[startTokenId] = _packOwnershipData(
                to,
                _nextInitializedFlag(quantity) | _nextExtraData(address(0), to, 0)
            );

            emit ConsecutiveTransfer(startTokenId, startTokenId + quantity - 1, address(0), to);

            ERC721AStorage.layout()._currentIndex = startTokenId + quantity;
        }
        _afterTokenTransfers(address(0), to, startTokenId, quantity);
    }

    /**
     * @dev Safely mints `quantity` tokens and transfers them to `to`.
     *
     * Requirements:
     *
     * - If `to` refers to a smart contract, it must implement
     * {IERC721Receiver-onERC721Received}, which is called for each safe transfer.
     * - `quantity` must be greater than 0.
     *
     * See {_mint}.
     *
     * Emits a {Transfer} event for each mint.
     */
    function _safeMint(
        address to,
        uint256 quantity,
        bytes memory _data
    ) internal virtual {
        _mint(to, quantity);

        unchecked {
            if (to.code.length != 0) {
                uint256 end = ERC721AStorage.layout()._currentIndex;
                uint256 index = end - quantity;
                do {
                    if (!_checkContractOnERC721Received(address(0), to, index++, _data)) {
                        _revert(TransferToNonERC721ReceiverImplementer.selector);
                    }
                } while (index < end);
                // Reentrancy protection.
                if (ERC721AStorage.layout()._currentIndex != end) _revert(bytes4(0));
            }
        }
    }

    /**
     * @dev Equivalent to `_safeMint(to, quantity, '')`.
     */
    function _safeMint(address to, uint256 quantity) internal virtual {
        _safeMint(to, quantity, '');
    }

    // =============================================================
    //                       APPROVAL OPERATIONS
    // =============================================================

    /**
     * @dev Equivalent to `_approve(to, tokenId, false)`.
     */
    function _approve(address to, uint256 tokenId) internal virtual {
        _approve(to, tokenId, false);
    }

    /**
     * @dev Gives permission to `to` to transfer `tokenId` token to another account.
     * The approval is cleared when the token is transferred.
     *
     * Only a single account can be approved at a time, so approving the
     * zero address clears previous approvals.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     *
     * Emits an {Approval} event.
     */
    function _approve(
        address to,
        uint256 tokenId,
        bool approvalCheck
    ) internal virtual {
        address owner = ownerOf(tokenId);

        if (approvalCheck && _msgSenderERC721A() != owner)
            if (!isApprovedForAll(owner, _msgSenderERC721A())) {
                _revert(ApprovalCallerNotOwnerNorApproved.selector);
            }

        ERC721AStorage.layout()._tokenApprovals[tokenId].value = to;
        emit Approval(owner, to, tokenId);
    }

    // =============================================================
    //                        BURN OPERATIONS
    // =============================================================

    /**
     * @dev Equivalent to `_burn(tokenId, false)`.
     */
    function _burn(uint256 tokenId) internal virtual {
        _burn(tokenId, false);
    }

    /**
     * @dev Destroys `tokenId`.
     * The approval is cleared when the token is burned.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     *
     * Emits a {Transfer} event.
     */
    function _burn(uint256 tokenId, bool approvalCheck) internal virtual {
        uint256 prevOwnershipPacked = _packedOwnershipOf(tokenId);

        address from = address(uint160(prevOwnershipPacked));

        (uint256 approvedAddressSlot, address approvedAddress) = _getApprovedSlotAndAddress(tokenId);

        if (approvalCheck) {
            // The nested ifs save around 20+ gas over a compound boolean condition.
            if (!_isSenderApprovedOrOwner(approvedAddress, from, _msgSenderERC721A()))
                if (!isApprovedForAll(from, _msgSenderERC721A())) _revert(TransferCallerNotOwnerNorApproved.selector);
        }

        _beforeTokenTransfers(from, address(0), tokenId, 1);

        // Clear approvals from the previous owner.
        assembly {
            if approvedAddress {
                // This is equivalent to `delete _tokenApprovals[tokenId]`.
                sstore(approvedAddressSlot, 0)
            }
        }

        // Underflow of the sender's balance is impossible because we check for
        // ownership above and the recipient's balance can't realistically overflow.
        // Counter overflow is incredibly unrealistic as `tokenId` would have to be 2**256.
        unchecked {
            // Updates:
            // - `balance -= 1`.
            // - `numberBurned += 1`.
            //
            // We can directly decrement the balance, and increment the number burned.
            // This is equivalent to `packed -= 1; packed += 1 << _BITPOS_NUMBER_BURNED;`.
            ERC721AStorage.layout()._packedAddressData[from] += (1 << _BITPOS_NUMBER_BURNED) - 1;

            // Updates:
            // - `address` to the last owner.
            // - `startTimestamp` to the timestamp of burning.
            // - `burned` to `true`.
            // - `nextInitialized` to `true`.
            ERC721AStorage.layout()._packedOwnerships[tokenId] = _packOwnershipData(
                from,
                (_BITMASK_BURNED | _BITMASK_NEXT_INITIALIZED) | _nextExtraData(from, address(0), prevOwnershipPacked)
            );

            // If the next slot may not have been initialized (i.e. `nextInitialized == false`) .
            if (prevOwnershipPacked & _BITMASK_NEXT_INITIALIZED == 0) {
                uint256 nextTokenId = tokenId + 1;
                // If the next slot's address is zero and not burned (i.e. packed value is zero).
                if (ERC721AStorage.layout()._packedOwnerships[nextTokenId] == 0) {
                    // If the next slot is within bounds.
                    if (nextTokenId != ERC721AStorage.layout()._currentIndex) {
                        // Initialize the next slot to maintain correctness for `ownerOf(tokenId + 1)`.
                        ERC721AStorage.layout()._packedOwnerships[nextTokenId] = prevOwnershipPacked;
                    }
                }
            }
        }

        emit Transfer(from, address(0), tokenId);
        _afterTokenTransfers(from, address(0), tokenId, 1);

        // Overflow not possible, as _burnCounter cannot be exceed _currentIndex times.
        unchecked {
            ERC721AStorage.layout()._burnCounter++;
        }
    }

    // =============================================================
    //                     EXTRA DATA OPERATIONS
    // =============================================================

    /**
     * @dev Directly sets the extra data for the ownership data `index`.
     */
    function _setExtraDataAt(uint256 index, uint24 extraData) internal virtual {
        uint256 packed = ERC721AStorage.layout()._packedOwnerships[index];
        if (packed == 0) _revert(OwnershipNotInitializedForExtraData.selector);
        uint256 extraDataCasted;
        // Cast `extraData` with assembly to avoid redundant masking.
        assembly {
            extraDataCasted := extraData
        }
        packed = (packed & _BITMASK_EXTRA_DATA_COMPLEMENT) | (extraDataCasted << _BITPOS_EXTRA_DATA);
        ERC721AStorage.layout()._packedOwnerships[index] = packed;
    }

    /**
     * @dev Called during each token transfer to set the 24bit `extraData` field.
     * Intended to be overridden by the cosumer contract.
     *
     * `previousExtraData` - the value of `extraData` before transfer.
     *
     * Calling conditions:
     *
     * - When `from` and `to` are both non-zero, `from`'s `tokenId` will be
     * transferred to `to`.
     * - When `from` is zero, `tokenId` will be minted for `to`.
     * - When `to` is zero, `tokenId` will be burned by `from`.
     * - `from` and `to` are never both zero.
     */
    function _extraData(
        address from,
        address to,
        uint24 previousExtraData
    ) internal view virtual returns (uint24) {}

    /**
     * @dev Returns the next extra data for the packed ownership data.
     * The returned result is shifted into position.
     */
    function _nextExtraData(
        address from,
        address to,
        uint256 prevOwnershipPacked
    ) private view returns (uint256) {
        uint24 extraData = uint24(prevOwnershipPacked >> _BITPOS_EXTRA_DATA);
        return uint256(_extraData(from, to, extraData)) << _BITPOS_EXTRA_DATA;
    }

    // =============================================================
    //                       OTHER OPERATIONS
    // =============================================================

    /**
     * @dev Returns the message sender (defaults to `msg.sender`).
     *
     * If you are writing GSN compatible contracts, you need to override this function.
     */
    function _msgSenderERC721A() internal view virtual returns (address) {
        return msg.sender;
    }

    /**
     * @dev Converts a uint256 to its ASCII string decimal representation.
     */
    function _toString(uint256 value) internal pure virtual returns (string memory str) {
        assembly {
            // The maximum value of a uint256 contains 78 digits (1 byte per digit), but
            // we allocate 0xa0 bytes to keep the free memory pointer 32-byte word aligned.
            // We will need 1 word for the trailing zeros padding, 1 word for the length,
            // and 3 words for a maximum of 78 digits. Total: 5 * 0x20 = 0xa0.
            let m := add(mload(0x40), 0xa0)
            // Update the free memory pointer to allocate.
            mstore(0x40, m)
            // Assign the `str` to the end.
            str := sub(m, 0x20)
            // Zeroize the slot after the string.
            mstore(str, 0)

            // Cache the end of the memory to calculate the length later.
            let end := str

            // We write the string from rightmost digit to leftmost digit.
            // The following is essentially a do-while loop that also handles the zero case.
            // prettier-ignore
            for { let temp := value } 1 {} {
                str := sub(str, 1)
                // Write the character to the pointer.
                // The ASCII index of the '0' character is 48.
                mstore8(str, add(48, mod(temp, 10)))
                // Keep dividing `temp` until zero.
                temp := div(temp, 10)
                // prettier-ignore
                if iszero(temp) { break }
            }

            let length := sub(end, str)
            // Move the pointer 32 bytes leftwards to make room for the length.
            str := sub(str, 0x20)
            // Store the length.
            mstore(str, length)
        }
    }

    /**
     * @dev For more efficient reverts.
     */
    function _revert(bytes4 errorSelector) internal pure {
        assembly {
            mstore(0x00, errorSelector)
            revert(0x00, 0x04)
        }
    }
}

// ============================================================
// FILE: lib/ERC721A-Upgradeable/contracts/IERC721AUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// ERC721A Contracts v4.2.3
// Creator: Chiru Labs

pragma solidity ^0.8.4;

/**
 * @dev Interface of ERC721A.
 */
interface IERC721AUpgradeable {
    /**
     * The caller must own the token or be an approved operator.
     */
    error ApprovalCallerNotOwnerNorApproved();

    /**
     * The token does not exist.
     */
    error ApprovalQueryForNonexistentToken();

    /**
     * Cannot query the balance for the zero address.
     */
    error BalanceQueryForZeroAddress();

    /**
     * Cannot mint to the zero address.
     */
    error MintToZeroAddress();

    /**
     * The quantity of tokens minted must be more than zero.
     */
    error MintZeroQuantity();

    /**
     * The token does not exist.
     */
    error OwnerQueryForNonexistentToken();

    /**
     * The caller must own the token or be an approved operator.
     */
    error TransferCallerNotOwnerNorApproved();

    /**
     * The token must be owned by `from`.
     */
    error TransferFromIncorrectOwner();

    /**
     * Cannot safely transfer to a contract that does not implement the
     * ERC721Receiver interface.
     */
    error TransferToNonERC721ReceiverImplementer();

    /**
     * Cannot transfer to the zero address.
     */
    error TransferToZeroAddress();

    /**
     * The token does not exist.
     */
    error URIQueryForNonexistentToken();

    /**
     * The `quantity` minted with ERC2309 exceeds the safety limit.
     */
    error MintERC2309QuantityExceedsLimit();

    /**
     * The `extraData` cannot be set on an unintialized ownership slot.
     */
    error OwnershipNotInitializedForExtraData();

    // =============================================================
    //                            STRUCTS
    // =============================================================

    struct TokenOwnership {
        // The address of the owner.
        address addr;
        // Stores the start time of ownership with minimal overhead for tokenomics.
        uint64 startTimestamp;
        // Whether the token has been burned.
        bool burned;
        // Arbitrary data similar to `startTimestamp` that can be set via {_extraData}.
        uint24 extraData;
    }

    // =============================================================
    //                         TOKEN COUNTERS
    // =============================================================

    /**
     * @dev Returns the total number of tokens in existence.
     * Burned tokens will reduce the count.
     * To get the total number of tokens minted, please see {_totalMinted}.
     */
    function totalSupply() external view returns (uint256);

    // =============================================================
    //                            IERC165
    // =============================================================

    /**
     * @dev Returns true if this contract implements the interface defined by
     * `interfaceId`. See the corresponding
     * [EIP section](https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified)
     * to learn more about how these ids are created.
     *
     * This function call must use less than 30000 gas.
     */
    function supportsInterface(bytes4 interfaceId) external view returns (bool);

    // =============================================================
    //                            IERC721
    // =============================================================

    /**
     * @dev Emitted when `tokenId` token is transferred from `from` to `to`.
     */
    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);

    /**
     * @dev Emitted when `owner` enables `approved` to manage the `tokenId` token.
     */
    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);

    /**
     * @dev Emitted when `owner` enables or disables
     * (`approved`) `operator` to manage all of its assets.
     */
    event ApprovalForAll(address indexed owner, address indexed operator, bool approved);

    /**
     * @dev Returns the number of tokens in `owner`'s account.
     */
    function balanceOf(address owner) external view returns (uint256 balance);

    /**
     * @dev Returns the owner of the `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function ownerOf(uint256 tokenId) external view returns (address owner);

    /**
     * @dev Safely transfers `tokenId` token from `from` to `to`,
     * checking first that contract recipients are aware of the ERC721 protocol
     * to prevent tokens from being forever locked.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must exist and be owned by `from`.
     * - If the caller is not `from`, it must be have been allowed to move
     * this token by either {approve} or {setApprovalForAll}.
     * - If `to` refers to a smart contract, it must implement
     * {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId,
        bytes calldata data
    ) external payable;

    /**
     * @dev Equivalent to `safeTransferFrom(from, to, tokenId, '')`.
     */
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId
    ) external payable;

    /**
     * @dev Transfers `tokenId` from `from` to `to`.
     *
     * WARNING: Usage of this method is discouraged, use {safeTransferFrom}
     * whenever possible.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must be owned by `from`.
     * - If the caller is not `from`, it must be approved to move this token
     * by either {approve} or {setApprovalForAll}.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(
        address from,
        address to,
        uint256 tokenId
    ) external payable;

    /**
     * @dev Gives permission to `to` to transfer `tokenId` token to another account.
     * The approval is cleared when the token is transferred.
     *
     * Only a single account can be approved at a time, so approving the
     * zero address clears previous approvals.
     *
     * Requirements:
     *
     * - The caller must own the token or be an approved operator.
     * - `tokenId` must exist.
     *
     * Emits an {Approval} event.
     */
    function approve(address to, uint256 tokenId) external payable;

    /**
     * @dev Approve or remove `operator` as an operator for the caller.
     * Operators can call {transferFrom} or {safeTransferFrom}
     * for any token owned by the caller.
     *
     * Requirements:
     *
     * - The `operator` cannot be the caller.
     *
     * Emits an {ApprovalForAll} event.
     */
    function setApprovalForAll(address operator, bool _approved) external;

    /**
     * @dev Returns the account approved for `tokenId` token.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function getApproved(uint256 tokenId) external view returns (address operator);

    /**
     * @dev Returns if the `operator` is allowed to manage all of the assets of `owner`.
     *
     * See {setApprovalForAll}.
     */
    function isApprovedForAll(address owner, address operator) external view returns (bool);

    // =============================================================
    //                        IERC721Metadata
    // =============================================================

    /**
     * @dev Returns the token collection name.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the token collection symbol.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the Uniform Resource Identifier (URI) for `tokenId` token.
     */
    function tokenURI(uint256 tokenId) external view returns (string memory);

    // =============================================================
    //                           IERC2309
    // =============================================================

    /**
     * @dev Emitted when tokens in `fromTokenId` to `toTokenId`
     * (inclusive) is transferred from `from` to `to`, as defined in the
     * [ERC2309](https://eips.ethereum.org/EIPS/eip-2309) standard.
     *
     * See {_mintERC2309} for more details.
     */
    event ConsecutiveTransfer(uint256 indexed fromTokenId, uint256 toTokenId, address indexed from, address indexed to);
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/access/OwnableUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (access/Ownable.sol)

pragma solidity ^0.8.18;

import { ContextUpgradeable } from "../utils/ContextUpgradeable.sol";
import "../proxy/utils/Initializable.sol";

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * The initial owner is set to the address provided by the deployer. This can
 * later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract OwnableUpgradeable is Initializable, ContextUpgradeable {
    address private _owner;

    /**
     * @dev The caller account is not authorized to perform an operation.
     */
    error OwnableUnauthorizedAccount(address account);

    /**
     * @dev The owner is not a valid owner account. (eg. `address(0)`)
     */
    error OwnableInvalidOwner(address owner);

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the address provided by the deployer as the initial owner.
     */
    function __Ownable_init(address initialOwner) internal onlyInitializing {
        __Ownable_init_unchained(initialOwner);
    }

    function __Ownable_init_unchained(address initialOwner) internal onlyInitializing {
        _transferOwnership(initialOwner);
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
        if (owner() != _msgSender()) {
            revert OwnableUnauthorizedAccount(_msgSender());
        }
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
        if (newOwner == address(0)) {
            revert OwnableInvalidOwner(address(0));
        }
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

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[49] private __gap;
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/interfaces/draft-IERC1822Upgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.5.0) (interfaces/draft-IERC1822.sol)

pragma solidity ^0.8.18;

/**
 * @dev ERC1822: Universal Upgradeable Proxy Standard (UUPS) documents a method for upgradeability through a simplified
 * proxy whose upgrades are fully controlled by the current implementation.
 */
interface IERC1822ProxiableUpgradeable {
    /**
     * @dev Returns the storage slot that the proxiable contract assumes is being used to store the implementation
     * address.
     *
     * IMPORTANT: A proxy pointing at a proxiable contract should not be considered proxiable itself, because this risks
     * bricking a proxy that upgrades to it, by delegating to itself until out of gas. Thus it is critical that this
     * function revert if invoked through a proxy.
     */
    function proxiableUUID() external view returns (bytes32);
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/proxy/beacon/IBeaconUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (proxy/beacon/IBeacon.sol)

pragma solidity ^0.8.18;

/**
 * @dev This is the interface that {BeaconProxy} expects of its beacon.
 */
interface IBeaconUpgradeable {
    /**
     * @dev Must return an address that can be used as a delegate call target.
     *
     * {UpgradeableBeacon} will check that this address is a contract.
     */
    function implementation() external view returns (address);
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/proxy/ERC1967/ERC1967UtilsUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (proxy/ERC1967/ERC1967Utils.sol)

pragma solidity ^0.8.18;

import { IBeaconUpgradeable } from "../beacon/IBeaconUpgradeable.sol";
import { AddressUpgradeable } from "../../utils/AddressUpgradeable.sol";
import { StorageSlotUpgradeable } from "../../utils/StorageSlotUpgradeable.sol";

/**
 * @dev This abstract contract provides getters and event emitting update functions for
 * https://eips.ethereum.org/EIPS/eip-1967[EIP1967] slots.
 */
library ERC1967UtilsUpgradeable {
    // We re-declare ERC-1967 events here because they can't be used directly from IERC1967.
    // This will be fixed in Solidity 0.8.21. At that point we should remove these events.
    /**
     * @dev Emitted when the implementation is upgraded.
     */
    event Upgraded(address indexed implementation);

    /**
     * @dev Emitted when the admin account has changed.
     */
    event AdminChanged(address previousAdmin, address newAdmin);

    /**
     * @dev Emitted when the beacon is changed.
     */
    event BeaconUpgraded(address indexed beacon);

    /**
     * @dev Storage slot with the address of the current implementation.
     * This is the keccak-256 hash of "eip1967.proxy.implementation" subtracted by 1.
     */
    // solhint-disable-next-line private-vars-leading-underscore
    bytes32 internal constant IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;

    /**
     * @dev The `implementation` of the proxy is invalid.
     */
    error ERC1967InvalidImplementation(address implementation);

    /**
     * @dev The `admin` of the proxy is invalid.
     */
    error ERC1967InvalidAdmin(address admin);

    /**
     * @dev The `beacon` of the proxy is invalid.
     */
    error ERC1967InvalidBeacon(address beacon);

    /**
     * @dev An upgrade function sees `msg.value > 0` that may be lost.
     */
    error ERC1967NonPayable();

    /**
     * @dev Returns the current implementation address.
     */
    function getImplementation() internal view returns (address) {
        return StorageSlotUpgradeable.getAddressSlot(IMPLEMENTATION_SLOT).value;
    }

    /**
     * @dev Stores a new address in the EIP1967 implementation slot.
     */
    function _setImplementation(address newImplementation) private {
        if (newImplementation.code.length == 0) {
            revert ERC1967InvalidImplementation(newImplementation);
        }
        StorageSlotUpgradeable.getAddressSlot(IMPLEMENTATION_SLOT).value = newImplementation;
    }

    /**
     * @dev Performs implementation upgrade with additional setup call if data is nonempty.
     * This function is payable only if the setup call is performed, otherwise `msg.value` is rejected
     * to avoid stuck value in the contract.
     *
     * Emits an {IERC1967-Upgraded} event.
     */
    function upgradeToAndCall(address newImplementation, bytes memory data) internal {
        _setImplementation(newImplementation);
        emit Upgraded(newImplementation);

        if (data.length > 0) {
            AddressUpgradeable.functionDelegateCall(newImplementation, data);
        } else {
            _checkNonPayable();
        }
    }

    /**
     * @dev Storage slot with the admin of the contract.
     * This is the keccak-256 hash of "eip1967.proxy.admin" subtracted by 1.
     */
    // solhint-disable-next-line private-vars-leading-underscore
    bytes32 internal constant ADMIN_SLOT = 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103;

    /**
     * @dev Returns the current admin.
     *
     * TIP: To get this value clients can read directly from the storage slot shown below (specified by EIP1967) using the
     * https://eth.wiki/json-rpc/API#eth_getstorageat[`eth_getStorageAt`] RPC call.
     * `0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103`
     */
    function getAdmin() internal view returns (address) {
        return StorageSlotUpgradeable.getAddressSlot(ADMIN_SLOT).value;
    }

    /**
     * @dev Stores a new address in the EIP1967 admin slot.
     */
    function _setAdmin(address newAdmin) private {
        if (newAdmin == address(0)) {
            revert ERC1967InvalidAdmin(address(0));
        }
        StorageSlotUpgradeable.getAddressSlot(ADMIN_SLOT).value = newAdmin;
    }

    /**
     * @dev Changes the admin of the proxy.
     *
     * Emits an {IERC1967-AdminChanged} event.
     */
    function changeAdmin(address newAdmin) internal {
        emit AdminChanged(getAdmin(), newAdmin);
        _setAdmin(newAdmin);
    }

    /**
     * @dev The storage slot of the UpgradeableBeacon contract which defines the implementation for this proxy.
     * This is the keccak-256 hash of "eip1967.proxy.beacon" subtracted by 1.
     */
    // solhint-disable-next-line private-vars-leading-underscore
    bytes32 internal constant BEACON_SLOT = 0xa3f0ad74e5423aebfd80d3ef4346578335a9a72aeaee59ff6cb3582b35133d50;

    /**
     * @dev Returns the current beacon.
     */
    function getBeacon() internal view returns (address) {
        return StorageSlotUpgradeable.getAddressSlot(BEACON_SLOT).value;
    }

    /**
     * @dev Stores a new beacon in the EIP1967 beacon slot.
     */
    function _setBeacon(address newBeacon) private {
        if (newBeacon.code.length == 0) {
            revert ERC1967InvalidBeacon(newBeacon);
        }

        StorageSlotUpgradeable.getAddressSlot(BEACON_SLOT).value = newBeacon;

        address beaconImplementation = IBeaconUpgradeable(newBeacon).implementation();
        if (beaconImplementation.code.length == 0) {
            revert ERC1967InvalidImplementation(beaconImplementation);
        }
    }

    /**
     * @dev Change the beacon and trigger a setup call if data is nonempty.
     * This function is payable only if the setup call is performed, otherwise `msg.value` is rejected
     * to avoid stuck value in the contract.
     *
     * Emits an {IERC1967-BeaconUpgraded} event.
     *
     * CAUTION: Invoking this function has no effect on an instance of {BeaconProxy} since v5, since
     * it uses an immutable beacon without looking at the value of the ERC-1967 beacon slot for
     * efficiency.
     */
    function upgradeBeaconToAndCall(address newBeacon, bytes memory data) internal {
        _setBeacon(newBeacon);
        emit BeaconUpgraded(newBeacon);

        if (data.length > 0) {
            AddressUpgradeable.functionDelegateCall(IBeaconUpgradeable(newBeacon).implementation(), data);
        } else {
            _checkNonPayable();
        }
    }

    /**
     * @dev Reverts if `msg.value` is not zero. It can be used to avoid `msg.value` stuck in the contract
     * if an upgrade doesn't perform an initialization call.
     */
    function _checkNonPayable() private {
        if (msg.value > 0) {
            revert ERC1967NonPayable();
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/Initializable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (proxy/utils/Initializable.sol)

pragma solidity ^0.8.18;

/**
 * @dev This is a base contract to aid in writing upgradeable contracts, or any kind of contract that will be deployed
 * behind a proxy. Since proxied contracts do not make use of a constructor, it's common to move constructor logic to an
 * external initializer function, usually called `initialize`. It then becomes necessary to protect this initializer
 * function so it can only be called once. The {initializer} modifier provided by this contract will have this effect.
 *
 * The initialization functions use a version number. Once a version number is used, it is consumed and cannot be
 * reused. This mechanism prevents re-execution of each "step" but allows the creation of new initialization steps in
 * case an upgrade adds a module that needs to be initialized.
 *
 * For example:
 *
 * [.hljs-theme-light.nopadding]
 * ```solidity
 * contract MyToken is ERC20Upgradeable {
 *     function initialize() initializer public {
 *         __ERC20_init("MyToken", "MTK");
 *     }
 * }
 *
 * contract MyTokenV2 is MyToken, ERC20PermitUpgradeable {
 *     function initializeV2() reinitializer(2) public {
 *         __ERC20Permit_init("MyToken");
 *     }
 * }
 * ```
 *
 * TIP: To avoid leaving the proxy in an uninitialized state, the initializer function should be called as early as
 * possible by providing the encoded function call as the `_data` argument to {ERC1967Proxy-constructor}.
 *
 * CAUTION: When used with inheritance, manual care must be taken to not invoke a parent initializer twice, or to ensure
 * that all initializers are idempotent. This is not verified automatically as constructors are by Solidity.
 *
 * [CAUTION]
 * ====
 * Avoid leaving a contract uninitialized.
 *
 * An uninitialized contract can be taken over by an attacker. This applies to both a proxy and its implementation
 * contract, which may impact the proxy. To prevent the implementation contract from being used, you should invoke
 * the {_disableInitializers} function in the constructor to automatically lock it when it is deployed:
 *
 * [.hljs-theme-light.nopadding]
 * ```
 * /// @custom:oz-upgrades-unsafe-allow constructor
 * constructor() {
 *     _disableInitializers();
 * }
 * ```
 * ====
 */
abstract contract Initializable {
    /**
     * @dev Storage of the initializable contract.
     *
     * It's implemented on a custom ERC-7201 namespace to reduce the risk of storage collisions
     * when using with upgradeable contracts.
     *
     * @custom:storage-location erc7201:openzeppelin.storage.Initializable
     */
    struct InitializableStorage {
        /**
         * @dev Indicates that the contract has been initialized.
         */
        uint64 _initialized;
        /**
         * @dev Indicates that the contract is in the process of being initialized.
         */
        bool _initializing;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.Initializable")) - 1))
    bytes32 private constant _INITIALIZABLE_STORAGE =
        0xf0c57e16840df040f15088dc2f81fe391c3923bec73e23a9662efc9c229c6a0e;

    /**
     * @dev The contract is already initialized.
     */
    error AlreadyInitialized();

    /**
     * @dev The contract is not initializing.
     */
    error NotInitializing();

    /**
     * @dev Triggered when the contract has been initialized or reinitialized.
     */
    event Initialized(uint64 version);

    /**
     * @dev A modifier that defines a protected initializer function that can be invoked at most once. In its scope,
     * `onlyInitializing` functions can be used to initialize parent contracts.
     *
     * Similar to `reinitializer(1)`, except that functions marked with `initializer` can be nested in the context of a
     * constructor.
     *
     * Emits an {Initialized} event.
     */
    modifier initializer() {
        // solhint-disable-next-line var-name-mixedcase
        InitializableStorage storage $ = _getInitializableStorage();

        bool isTopLevelCall = !$._initializing;
        if (!(isTopLevelCall && $._initialized < 1) && !(address(this).code.length == 0 && $._initialized == 1)) {
            revert AlreadyInitialized();
        }
        $._initialized = 1;
        if (isTopLevelCall) {
            $._initializing = true;
        }
        _;
        if (isTopLevelCall) {
            $._initializing = false;
            emit Initialized(1);
        }
    }

    /**
     * @dev A modifier that defines a protected reinitializer function that can be invoked at most once, and only if the
     * contract hasn't been initialized to a greater version before. In its scope, `onlyInitializing` functions can be
     * used to initialize parent contracts.
     *
     * A reinitializer may be used after the original initialization step. This is essential to configure modules that
     * are added through upgrades and that require initialization.
     *
     * When `version` is 1, this modifier is similar to `initializer`, except that functions marked with `reinitializer`
     * cannot be nested. If one is invoked in the context of another, execution will revert.
     *
     * Note that versions can jump in increments greater than 1; this implies that if multiple reinitializers coexist in
     * a contract, executing them in the right order is up to the developer or operator.
     *
     * WARNING: setting the version to 255 will prevent any future reinitialization.
     *
     * Emits an {Initialized} event.
     */
    modifier reinitializer(uint64 version) {
        // solhint-disable-next-line var-name-mixedcase
        InitializableStorage storage $ = _getInitializableStorage();

        if ($._initializing || $._initialized >= version) {
            revert AlreadyInitialized();
        }
        $._initialized = version;
        $._initializing = true;
        _;
        $._initializing = false;
        emit Initialized(version);
    }

    /**
     * @dev Modifier to protect an initialization function so that it can only be invoked by functions with the
     * {initializer} and {reinitializer} modifiers, directly or indirectly.
     */
    modifier onlyInitializing() {
        _checkInitializing();
        _;
    }

    /**
     * @dev Reverts if the contract is not in an initializing state. See {onlyInitializing}.
     */
    function _checkInitializing() internal view virtual {
        if (!_isInitializing()) {
            revert NotInitializing();
        }
    }

    /**
     * @dev Locks the contract, preventing any future reinitialization. This cannot be part of an initializer call.
     * Calling this in the constructor of a contract will prevent that contract from being initialized or reinitialized
     * to any version. It is recommended to use this to lock implementation contracts that are designed to be called
     * through proxies.
     *
     * Emits an {Initialized} event the first time it is successfully executed.
     */
    function _disableInitializers() internal virtual {
        // solhint-disable-next-line var-name-mixedcase
        InitializableStorage storage $ = _getInitializableStorage();

        if ($._initializing) {
            revert AlreadyInitialized();
        }
        if ($._initialized != type(uint64).max) {
            $._initialized = type(uint64).max;
            emit Initialized(type(uint64).max);
        }
    }

    /**
     * @dev Returns the highest version that has been initialized. See {reinitializer}.
     */
    function _getInitializedVersion() internal view returns (uint64) {
        return _getInitializableStorage()._initialized;
    }

    /**
     * @dev Returns `true` if the contract is currently initializing. See {onlyInitializing}.
     */
    function _isInitializing() internal view returns (bool) {
        return _getInitializableStorage()._initializing;
    }

    /**
     * @dev Returns a pointer to the storage namespace.
     */
    // solhint-disable-next-line var-name-mixedcase
    function _getInitializableStorage() private pure returns (InitializableStorage storage $) {
        assembly {
            $.slot := _INITIALIZABLE_STORAGE
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/UUPSUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (proxy/utils/UUPSUpgradeable.sol)

pragma solidity ^0.8.18;

import { IERC1822ProxiableUpgradeable } from "../../interfaces/draft-IERC1822Upgradeable.sol";
import { ERC1967UtilsUpgradeable } from "../ERC1967/ERC1967UtilsUpgradeable.sol";
import "./Initializable.sol";

/**
 * @dev An upgradeability mechanism designed for UUPS proxies. The functions included here can perform an upgrade of an
 * {ERC1967Proxy}, when this contract is set as the implementation behind such a proxy.
 *
 * A security mechanism ensures that an upgrade does not turn off upgradeability accidentally, although this risk is
 * reinstated if the upgrade retains upgradeability but removes the security mechanism, e.g. by replacing
 * `UUPSUpgradeable` with a custom implementation of upgrades.
 *
 * The {_authorizeUpgrade} function must be overridden to include access restriction to the upgrade mechanism.
 */
abstract contract UUPSUpgradeable is Initializable, IERC1822ProxiableUpgradeable {
    function __UUPSUpgradeable_init() internal onlyInitializing {
    }

    function __UUPSUpgradeable_init_unchained() internal onlyInitializing {
    }
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    address private immutable __self = address(this);

    /**
     * @dev The version of the upgrade interface of the contract. If this getter is missing, both `upgradeTo(address)`
     * and `upgradeToAndCall(address,bytes)` are present, and `upgradeTo` must be used if no function should be called,
     * while `upgradeToAndCall` will invoke the `receive` function if the second argument is the empty byte string.
     * If the getter returns `"5.0.0"`, only `upgradeToAndCall(address,bytes)` is present, and the second argument must
     * be the empty byte string if no function should be called, making it impossible to invoke the `receive` function
     * during an upgrade.
     */
    string public constant UPGRADE_INTERFACE_VERSION = "5.0.0";

    /**
     * @dev The call is from an unauthorized context.
     */
    error UUPSUnauthorizedCallContext();

    /**
     * @dev The storage `slot` is unsupported as a UUID.
     */
    error UUPSUnsupportedProxiableUUID(bytes32 slot);

    /**
     * @dev Check that the execution is being performed through a delegatecall call and that the execution context is
     * a proxy contract with an implementation (as defined in ERC1967) pointing to self. This should only be the case
     * for UUPS and transparent proxies that are using the current contract as their implementation. Execution of a
     * function through ERC1167 minimal proxies (clones) would not normally pass this test, but is not guaranteed to
     * fail.
     */
    modifier onlyProxy() {
        _checkProxy();
        _;
    }

    /**
     * @dev Check that the execution is not being performed through a delegate call. This allows a function to be
     * callable on the implementing contract but not through proxies.
     */
    modifier notDelegated() {
        _checkNotDelegated();
        _;
    }

    /**
     * @dev Implementation of the ERC1822 {proxiableUUID} function. This returns the storage slot used by the
     * implementation. It is used to validate the implementation's compatibility when performing an upgrade.
     *
     * IMPORTANT: A proxy pointing at a proxiable contract should not be considered proxiable itself, because this risks
     * bricking a proxy that upgrades to it, by delegating to itself until out of gas. Thus it is critical that this
     * function revert if invoked through a proxy. This is guaranteed by the `notDelegated` modifier.
     */
    function proxiableUUID() external view virtual notDelegated returns (bytes32) {
        return ERC1967UtilsUpgradeable.IMPLEMENTATION_SLOT;
    }

    /**
     * @dev Upgrade the implementation of the proxy to `newImplementation`, and subsequently execute the function call
     * encoded in `data`.
     *
     * Calls {_authorizeUpgrade}.
     *
     * Emits an {Upgraded} event.
     *
     * @custom:oz-upgrades-unsafe-allow-reachable delegatecall
     */
    function upgradeToAndCall(address newImplementation, bytes memory data) public payable virtual onlyProxy {
        _authorizeUpgrade(newImplementation);
        _upgradeToAndCallUUPS(newImplementation, data);
    }

    /**
     * @dev Reverts if the execution is not performed via delegatecall or the execution
     * context is not of a proxy with an ERC1967-compliant implementation pointing to self.
     * See {_onlyProxy}.
     */
    function _checkProxy() internal view virtual {
        if (
            address(this) == __self || // Must be called through delegatecall
            ERC1967UtilsUpgradeable.getImplementation() != __self // Must be called through an active proxy
        ) {
            revert UUPSUnauthorizedCallContext();
        }
    }

    /**
     * @dev Reverts if the execution is performed via delegatecall.
     * See {notDelegated}.
     */
    function _checkNotDelegated() internal view virtual {
        if (address(this) != __self) {
            // Must not be called through delegatecall
            revert UUPSUnauthorizedCallContext();
        }
    }

    /**
     * @dev Function that should revert when `msg.sender` is not authorized to upgrade the contract. Called by
     * {upgradeToAndCall}.
     *
     * Normally, this function will use an xref:access.adoc[access control] modifier such as {Ownable-onlyOwner}.
     *
     * ```solidity
     * function _authorizeUpgrade(address) internal onlyOwner {}
     * ```
     */
    function _authorizeUpgrade(address newImplementation) internal virtual;

    /**
     * @dev Performs an implementation upgrade with a security check for UUPS proxies, and additional setup call.
     *
     * As a security check, {proxiableUUID} is invoked in the new implementation, and the return value
     * is expected to be the implementation slot in ERC1967.
     *
     * Emits an {IERC1967-Upgraded} event.
     */
    function _upgradeToAndCallUUPS(address newImplementation, bytes memory data) private {
        try IERC1822ProxiableUpgradeable(newImplementation).proxiableUUID() returns (bytes32 slot) {
            if (slot != ERC1967UtilsUpgradeable.IMPLEMENTATION_SLOT) {
                revert UUPSUnsupportedProxiableUUID(slot);
            }
            ERC1967UtilsUpgradeable.upgradeToAndCall(newImplementation, data);
        } catch {
            // The implementation is not UUPS
            revert ERC1967UtilsUpgradeable.ERC1967InvalidImplementation(newImplementation);
        }
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[50] private __gap;
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/security/PausableUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (security/Pausable.sol)

pragma solidity ^0.8.18;

import { ContextUpgradeable } from "../utils/ContextUpgradeable.sol";
import "../proxy/utils/Initializable.sol";

/**
 * @dev Contract module which allows children to implement an emergency stop
 * mechanism that can be triggered by an authorized account.
 *
 * This module is used through inheritance. It will make available the
 * modifiers `whenNotPaused` and `whenPaused`, which can be applied to
 * the functions of your contract. Note that they will not be pausable by
 * simply including this module, only once the modifiers are put in place.
 */
abstract contract PausableUpgradeable is Initializable, ContextUpgradeable {
    bool private _paused;

    /**
     * @dev Emitted when the pause is triggered by `account`.
     */
    event Paused(address account);

    /**
     * @dev Emitted when the pause is lifted by `account`.
     */
    event Unpaused(address account);

    /**
     * @dev The operation failed because the contract is paused.
     */
    error EnforcedPause();

    /**
     * @dev The operation failed because the contract is not paused.
     */
    error ExpectedPause();

    /**
     * @dev Initializes the contract in unpaused state.
     */
    function __Pausable_init() internal onlyInitializing {
        __Pausable_init_unchained();
    }

    function __Pausable_init_unchained() internal onlyInitializing {
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
        if (paused()) {
            revert EnforcedPause();
        }
    }

    /**
     * @dev Throws if the contract is not paused.
     */
    function _requirePaused() internal view virtual {
        if (!paused()) {
            revert ExpectedPause();
        }
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

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[49] private __gap;
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/security/ReentrancyGuardUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (security/ReentrancyGuard.sol)

pragma solidity ^0.8.18;
import "../proxy/utils/Initializable.sol";

/**
 * @dev Contract module that helps prevent reentrant calls to a function.
 *
 * Inheriting from `ReentrancyGuard` will make the {nonReentrant} modifier
 * available, which can be applied to functions to make sure there are no nested
 * (reentrant) calls to them.
 *
 * Note that because there is a single `nonReentrant` guard, functions marked as
 * `nonReentrant` may not call one another. This can be worked around by making
 * those functions `private`, and then adding `external` `nonReentrant` entry
 * points to them.
 *
 * TIP: If you would like to learn more about reentrancy and alternative ways
 * to protect against it, check out our blog post
 * https://blog.openzeppelin.com/reentrancy-after-istanbul/[Reentrancy After Istanbul].
 */
abstract contract ReentrancyGuardUpgradeable is Initializable {
    // Booleans are more expensive than uint256 or any type that takes up a full
    // word because each write operation emits an extra SLOAD to first read the
    // slot's contents, replace the bits taken up by the boolean, and then write
    // back. This is the compiler's defense against contract upgrades and
    // pointer aliasing, and it cannot be disabled.

    // The values being non-zero value makes deployment a bit more expensive,
    // but in exchange the refund on every call to nonReentrant will be lower in
    // amount. Since refunds are capped to a percentage of the total
    // transaction's gas, it is best to keep them low in cases like this one, to
    // increase the likelihood of the full refund coming into effect.
    uint256 private constant _NOT_ENTERED = 1;
    uint256 private constant _ENTERED = 2;

    uint256 private _status;

    /**
     * @dev Unauthorized reentrant call.
     */
    error ReentrancyGuardReentrantCall();

    function __ReentrancyGuard_init() internal onlyInitializing {
        __ReentrancyGuard_init_unchained();
    }

    function __ReentrancyGuard_init_unchained() internal onlyInitializing {
        _status = _NOT_ENTERED;
    }

    /**
     * @dev Prevents a contract from calling itself, directly or indirectly.
     * Calling a `nonReentrant` function from another `nonReentrant`
     * function is not supported. It is possible to prevent this from happening
     * by making the `nonReentrant` function external, and making it call a
     * `private` function that does the actual work.
     */
    modifier nonReentrant() {
        _nonReentrantBefore();
        _;
        _nonReentrantAfter();
    }

    function _nonReentrantBefore() private {
        // On the first call to nonReentrant, _status will be _NOT_ENTERED
        if (_status == _ENTERED) {
            revert ReentrancyGuardReentrantCall();
        }

        // Any calls to nonReentrant after this point will fail
        _status = _ENTERED;
    }

    function _nonReentrantAfter() private {
        // By storing the original value once again, a refund is triggered (see
        // https://eips.ethereum.org/EIPS/eip-2200)
        _status = _NOT_ENTERED;
    }

    /**
     * @dev Returns true if the reentrancy guard is currently set to "entered", which indicates there is a
     * `nonReentrant` function in the call stack.
     */
    function _reentrancyGuardEntered() internal view returns (bool) {
        return _status == _ENTERED;
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[49] private __gap;
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/utils/AddressUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/Address.sol)

pragma solidity ^0.8.18;

/**
 * @dev Collection of functions related to the address type
 */
library AddressUpgradeable {
    /**
     * @dev The ETH balance of the account is not enough to perform the operation.
     */
    error AddressInsufficientBalance(address account);

    /**
     * @dev There's no code at `target` (it is not a contract).
     */
    error AddressEmptyCode(address target);

    /**
     * @dev A call to an address target failed. The target may have reverted.
     */
    error FailedInnerCall();

    /**
     * @dev Replacement for Solidity's `transfer`: sends `amount` wei to
     * `recipient`, forwarding all available gas and reverting on errors.
     *
     * https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost
     * of certain opcodes, possibly making contracts go over the 2300 gas limit
     * imposed by `transfer`, making them unable to receive funds via
     * `transfer`. {sendValue} removes this limitation.
     *
     * https://consensys.net/diligence/blog/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.8.20/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
     */
    function sendValue(address payable recipient, uint256 amount) internal {
        if (address(this).balance < amount) {
            revert AddressInsufficientBalance(address(this));
        }

        (bool success, ) = recipient.call{value: amount}("");
        if (!success) {
            revert FailedInnerCall();
        }
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain `call` is an unsafe replacement for a function call: use this
     * function instead.
     *
     * If `target` reverts with a revert reason or custom error, it is bubbled
     * up by this function (like regular Solidity function calls). However, if
     * the call reverted with no returned reason, this function reverts with a
     * {FailedInnerCall} error.
     *
     * Returns the raw returned data. To convert to the expected return value,
     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].
     *
     * Requirements:
     *
     * - `target` must be a contract.
     * - calling `target` with `data` must not revert.
     */
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but also transferring `value` wei to `target`.
     *
     * Requirements:
     *
     * - the calling contract must have an ETH balance of at least `value`.
     * - the called Solidity function must be `payable`.
     */
    function functionCallWithValue(address target, bytes memory data, uint256 value) internal returns (bytes memory) {
        if (address(this).balance < value) {
            revert AddressInsufficientBalance(address(this));
        }
        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return verifyCallResultFromTarget(target, success, returndata);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     */
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        (bool success, bytes memory returndata) = target.staticcall(data);
        return verifyCallResultFromTarget(target, success, returndata);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a delegate call.
     */
    function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {
        (bool success, bytes memory returndata) = target.delegatecall(data);
        return verifyCallResultFromTarget(target, success, returndata);
    }

    /**
     * @dev Tool to verify that a low level call to smart-contract was successful, and reverts if the target
     * was not a contract or bubbling up the revert reason (falling back to {FailedInnerCall}) in case of an
     * unsuccessful call.
     */
    function verifyCallResultFromTarget(
        address target,
        bool success,
        bytes memory returndata
    ) internal view returns (bytes memory) {
        if (!success) {
            _revert(returndata);
        } else {
            // only check if target is a contract if the call was successful and the return data is empty
            // otherwise we already know that it was a contract
            if (returndata.length == 0 && target.code.length == 0) {
                revert AddressEmptyCode(target);
            }
            return returndata;
        }
    }

    /**
     * @dev Tool to verify that a low level call was successful, and reverts if it wasn't, either by bubbling the
     * revert reason or with a default {FailedInnerCall} error.
     */
    function verifyCallResult(bool success, bytes memory returndata) internal pure returns (bytes memory) {
        if (!success) {
            _revert(returndata);
        } else {
            return returndata;
        }
    }

    /**
     * @dev Reverts with returndata if present. Otherwise reverts with {FailedInnerCall}.
     */
    function _revert(bytes memory returndata) private pure {
        // Look for revert reason and bubble it up if present
        if (returndata.length > 0) {
            // The easiest way to bubble the revert reason is using memory via assembly
            /// @solidity memory-safe-assembly
            assembly {
                let returndata_size := mload(returndata)
                revert(add(32, returndata), returndata_size)
            }
        } else {
            revert FailedInnerCall();
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/utils/ContextUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts v4.4.1 (utils/Context.sol)

pragma solidity ^0.8.18;
import "../proxy/utils/Initializable.sol";

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract ContextUpgradeable is Initializable {
    function __Context_init() internal onlyInitializing {
    }

    function __Context_init_unchained() internal onlyInitializing {
    }
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[50] private __gap;
}

// ============================================================
// FILE: lib/openzeppelin-contracts-upgradeable/contracts/utils/StorageSlotUpgradeable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.9.0) (utils/StorageSlot.sol)
// This file was procedurally generated from scripts/generate/templates/StorageSlot.js.

pragma solidity ^0.8.18;

/**
 * @dev Library for reading and writing primitive types to specific storage slots.
 *
 * Storage slots are often used to avoid storage conflict when dealing with upgradeable contracts.
 * This library helps with reading and writing to such slots without the need for inline assembly.
 *
 * The functions in this library return Slot structs that contain a `value` member that can be used to read or write.
 *
 * Example usage to set ERC1967 implementation slot:
 * ```solidity
 * contract ERC1967 {
 *     bytes32 internal constant _IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;
 *
 *     function _getImplementation() internal view returns (address) {
 *         return StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value;
 *     }
 *
 *     function _setImplementation(address newImplementation) internal {
 *         require(newImplementation.code.length > 0);
 *         StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value = newImplementation;
 *     }
 * }
 * ```
 */
library StorageSlotUpgradeable {
    struct AddressSlot {
        address value;
    }

    struct BooleanSlot {
        bool value;
    }

    struct Bytes32Slot {
        bytes32 value;
    }

    struct Uint256Slot {
        uint256 value;
    }

    struct StringSlot {
        string value;
    }

    struct BytesSlot {
        bytes value;
    }

    /**
     * @dev Returns an `AddressSlot` with member `value` located at `slot`.
     */
    function getAddressSlot(bytes32 slot) internal pure returns (AddressSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `BooleanSlot` with member `value` located at `slot`.
     */
    function getBooleanSlot(bytes32 slot) internal pure returns (BooleanSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `Bytes32Slot` with member `value` located at `slot`.
     */
    function getBytes32Slot(bytes32 slot) internal pure returns (Bytes32Slot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `Uint256Slot` with member `value` located at `slot`.
     */
    function getUint256Slot(bytes32 slot) internal pure returns (Uint256Slot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `StringSlot` with member `value` located at `slot`.
     */
    function getStringSlot(bytes32 slot) internal pure returns (StringSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `StringSlot` representation of the string storage pointer `store`.
     */
    function getStringSlot(string storage store) internal pure returns (StringSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := store.slot
        }
    }

    /**
     * @dev Returns an `BytesSlot` with member `value` located at `slot`.
     */
    function getBytesSlot(bytes32 slot) internal pure returns (BytesSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `BytesSlot` representation of the bytes storage pointer `store`.
     */
    function getBytesSlot(bytes storage store) internal pure returns (BytesSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := store.slot
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/IERC20.sol)

pragma solidity ^0.8.20;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /**
     * @dev Returns the value of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the value of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 value) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the
     * allowance mechanism. `value` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 value) external returns (bool);
}

// ============================================================
// FILE: src/deposit/DepositContract.sol
// ============================================================

/**
 *Submitted for verification at Etherscan.io on 2020-10-14
*/

// ┏━━━┓━┏┓━┏┓━━┏━━━┓━━┏━━━┓━━━━┏━━━┓━━━━━━━━━━━━━━━━━━━┏┓━━━━━┏━━━┓━━━━━━━━━┏┓━━━━━━━━━━━━━━┏┓━
// ┃┏━━┛┏┛┗┓┃┃━━┃┏━┓┃━━┃┏━┓┃━━━━┗┓┏┓┃━━━━━━━━━━━━━━━━━━┏┛┗┓━━━━┃┏━┓┃━━━━━━━━┏┛┗┓━━━━━━━━━━━━┏┛┗┓
// ┃┗━━┓┗┓┏┛┃┗━┓┗┛┏┛┃━━┃┃━┃┃━━━━━┃┃┃┃┏━━┓┏━━┓┏━━┓┏━━┓┏┓┗┓┏┛━━━━┃┃━┗┛┏━━┓┏━┓━┗┓┏┛┏━┓┏━━┓━┏━━┓┗┓┏┛
// ┃┏━━┛━┃┃━┃┏┓┃┏━┛┏┛━━┃┃━┃┃━━━━━┃┃┃┃┃┏┓┃┃┏┓┃┃┏┓┃┃━━┫┣┫━┃┃━━━━━┃┃━┏┓┃┏┓┃┃┏┓┓━┃┃━┃┏┛┗━┓┃━┃┏━┛━┃┃━
// ┃┗━━┓━┃┗┓┃┃┃┃┃┃┗━┓┏┓┃┗━┛┃━━━━┏┛┗┛┃┃┃━┫┃┗┛┃┃┗┛┃┣━━┃┃┃━┃┗┓━━━━┃┗━┛┃┃┗┛┃┃┃┃┃━┃┗┓┃┃━┃┗┛┗┓┃┗━┓━┃┗┓
// ┗━━━┛━┗━┛┗┛┗┛┗━━━┛┗┛┗━━━┛━━━━┗━━━┛┗━━┛┃┏━┛┗━━┛┗━━┛┗┛━┗━┛━━━━┗━━━┛┗━━┛┗┛┗┛━┗━┛┗┛━┗━━━┛┗━━┛━┗━┛
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┃┃━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┗┛━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

// SPDX-License-Identifier: CC0-1.0

pragma solidity ^0.8.18;

// This interface is designed to be compatible with the Vyper version.
/// @notice This is the Ethereum 2.0 deposit contract interface.
/// For more information see the Phase 0 specification under https://github.com/ethereum/eth2.0-specs
interface IDepositContract {
    /// @notice A processed deposit event.
    event DepositEvent(
        bytes pubkey,
        bytes withdrawal_credentials,
        bytes amount,
        bytes signature,
        bytes index
    );

    /// @notice Submit a Phase 0 DepositData object.
    /// @param pubkey A BLS12-381 public key.
    /// @param withdrawal_credentials Commitment to a public key for withdrawals.
    /// @param signature A BLS12-381 signature.
    /// @param deposit_data_root The SHA-256 hash of the SSZ-encoded DepositData object.
    /// Used as a protection against malformed input.
    function deposit(
        bytes calldata pubkey,
        bytes calldata withdrawal_credentials,
        bytes calldata signature,
        bytes32 deposit_data_root
    ) external payable;

    /// @notice Query the current deposit root hash.
    /// @return The deposit root hash.
    function get_deposit_root() external view returns (bytes32);

    /// @notice Query the current deposit count.
    /// @return The deposit count encoded as a little endian 64-bit number.
    function get_deposit_count() external view returns (bytes memory);
}

// Based on official specification in https://eips.ethereum.org/EIPS/eip-165
interface ERC165 {
    /// @notice Query if a contract implements an interface
    /// @param interfaceId The interface identifier, as specified in ERC-165
    /// @dev Interface identification is specified in ERC-165. This function
    ///  uses less than 30,000 gas.
    /// @return `true` if the contract implements `interfaceId` and
    ///  `interfaceId` is not 0xffffffff, `false` otherwise
    function supportsInterface(bytes4 interfaceId) external pure returns (bool);
}

// This is a rewrite of the Vyper Eth2.0 deposit contract in Solidity.
// It tries to stay as close as possible to the original source code.
/// @notice This is the Ethereum 2.0 deposit contract interface.
/// For more information see the Phase 0 specification under https://github.com/ethereum/eth2.0-specs
contract DepositContract is IDepositContract, ERC165 {
    uint constant DEPOSIT_CONTRACT_TREE_DEPTH = 32;
    // NOTE: this also ensures `deposit_count` will fit into 64-bits
    uint constant MAX_DEPOSIT_COUNT = 2**DEPOSIT_CONTRACT_TREE_DEPTH - 1;

    bytes32[DEPOSIT_CONTRACT_TREE_DEPTH] branch;
    uint256 deposit_count;

    bytes32[DEPOSIT_CONTRACT_TREE_DEPTH] zero_hashes;

    constructor() {
        // Compute hashes in empty sparse Merkle tree
        for (uint height = 0; height < DEPOSIT_CONTRACT_TREE_DEPTH - 1; height++)
            zero_hashes[height + 1] = sha256(abi.encodePacked(zero_hashes[height], zero_hashes[height]));
    }

    function get_deposit_root() override external view returns (bytes32) {
        bytes32 node;
        uint size = deposit_count;
        for (uint height = 0; height < DEPOSIT_CONTRACT_TREE_DEPTH; height++) {
            if ((size & 1) == 1)
                node = sha256(abi.encodePacked(branch[height], node));
            else
                node = sha256(abi.encodePacked(node, zero_hashes[height]));
            size /= 2;
        }
        return sha256(abi.encodePacked(
            node,
            to_little_endian_64(uint64(deposit_count)),
            bytes24(0)
        ));
    }

    function get_deposit_count() override external view returns (bytes memory) {
        return to_little_endian_64(uint64(deposit_count));
    }

    function deposit(
        bytes calldata pubkey,
        bytes calldata withdrawal_credentials,
        bytes calldata signature,
        bytes32 deposit_data_root
    ) override external payable {
        // Extended ABI length checks since dynamic types are used.
        require(pubkey.length == 48, "DepositContract: invalid pubkey length");
        require(withdrawal_credentials.length == 32, "DepositContract: invalid withdrawal_credentials length");
        require(signature.length == 96, "DepositContract: invalid signature length");

        // Check deposit amount
        require(msg.value >= 1 ether, "DepositContract: deposit value too low");
        require(msg.value % 1 gwei == 0, "DepositContract: deposit value not multiple of gwei");
        uint deposit_amount = msg.value / 1 gwei;
        require(deposit_amount <= type(uint64).max, "DepositContract: deposit value too high");

        // Emit `DepositEvent` log
        bytes memory amount = to_little_endian_64(uint64(deposit_amount));
        emit DepositEvent(
            pubkey,
            withdrawal_credentials,
            amount,
            signature,
            to_little_endian_64(uint64(deposit_count))
        );

        // Compute deposit data root (`DepositData` hash tree root)
        bytes32 pubkey_root = sha256(abi.encodePacked(pubkey, bytes16(0)));
        bytes32 signature_root = sha256(abi.encodePacked(
            sha256(abi.encodePacked(signature[:64])),
            sha256(abi.encodePacked(signature[64:], bytes32(0)))
        ));
        bytes32 node = sha256(abi.encodePacked(
            sha256(abi.encodePacked(pubkey_root, withdrawal_credentials)),
            sha256(abi.encodePacked(amount, bytes24(0), signature_root))
        ));

        // Verify computed and expected deposit data roots match
        require(node == deposit_data_root, "DepositContract: reconstructed DepositData does not match supplied deposit_data_root");

        // Avoid overflowing the Merkle tree (and prevent edge case in computing `branch`)
        require(deposit_count < MAX_DEPOSIT_COUNT, "DepositContract: merkle tree full");

        // Add deposit data root to Merkle tree (update a single `branch` node)
        deposit_count += 1;
        uint size = deposit_count;
        for (uint height = 0; height < DEPOSIT_CONTRACT_TREE_DEPTH; height++) {
            if ((size & 1) == 1) {
                branch[height] = node;
                return;
            }
            node = sha256(abi.encodePacked(branch[height], node));
            size /= 2;
        }
        // As the loop should always end prematurely with the `return` statement,
        // this code should be unreachable. We assert `false` just to be safe.
        assert(false);
    }

    function supportsInterface(bytes4 interfaceId) override external pure returns (bool) {
        return interfaceId == type(ERC165).interfaceId || interfaceId == type(IDepositContract).interfaceId;
    }

    function to_little_endian_64(uint64 value) internal pure returns (bytes memory ret) {
        ret = new bytes(8);
        bytes8 bytesValue = bytes8(value);
        // Byteswapping during copying to bytes.
        ret[0] = bytesValue[7];
        ret[1] = bytesValue[6];
        ret[2] = bytesValue[5];
        ret[3] = bytesValue[4];
        ret[4] = bytesValue[3];
        ret[5] = bytesValue[2];
        ret[6] = bytesValue[1];
        ret[7] = bytesValue[0];
    }
}

// ============================================================
// FILE: src/interfaces/IConsensusVault.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

/**
 * @title Interface for ConsensusVault
 * @notice Vault will manage methods for rewards, commissions, tax
 */
interface IConsensusVault {
    /**
     * @notice transfer ETH
     * @param _amount transfer amount
     * @param _to transfer to address
     */
    function transfer(uint256 _amount, address _to) external;

    /**
     * @notice transfer ETH
     * @param _amount transfer amount
     */
    function reinvestment(uint256 _amount) external;
}

// ============================================================
// FILE: src/interfaces/IELVault.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

/**
 * @title Interface for IELVault
 * @notice Vault will manage methods for rewards, commissions, tax
 */
interface IELVault {
    /**
     * @notice transfer ETH
     * @param _amount transfer amount
     * @param _to transfer to address
     */
    function transfer(uint256 _amount, address _to) external;

    /**
     * @notice transfer ETH
     * @param _amount transfer amount
     */
    function reinvestment(uint256 _amount) external;
}

// ============================================================
// FILE: src/interfaces/ILiquidStaking.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

import {SendParam} from "./IOFT.sol";

/**
 * @title Interface fro MTZ LiquidStaking Contract
 *
 * Multichainz provides decentralized solutions for Ethereum liquidity,
 *
 * The Multichainz protocol is a smart contract for next-generation liquid staking derivatives,
 * which includes all the concepts of traditional liquid staking, re-staking, distributed validators, and validator NFTs in a single protocol.
 *
 * Our vision is to use our innovative liquidity solution to provide more options for the Ethereum liquidity market,
 * thereby making Ethereum staking more decentralized.
 */

interface ILiquidStaking {

    //function l2UnstakeETH(
    //    uint256 operatorId,
    //    uint256 amount,
    //    address onBehalfOf,
    //    address receiver
    //    ) external;
    /**
     * @notice Receive Rewards
     * @param _rewards rewards amount
     */
    function receiveRewards(uint256 _rewards) external payable;

    /**
     * @notice Update the status of the corresponding nft according to the report result of the oracle machine
     * @param _tokenIds token id
     * @param _exitBlockNumbers exit block number
     */
    function nftExitHandle(
        uint256[] memory _tokenIds,
        uint256[] memory _exitBlockNumbers
    ) external;

    /**
     * @notice According to the settlement results of the vaultManager, the income of the re-investment execution layer
     * @param _operatorIds operator id
     * @param _amounts reinvest amounts
     */
    function reinvestElRewards(
        uint256[] memory _operatorIds,
        uint256[] memory _amounts
    ) external;

    /**
     * @notice According to the reported results of the oracle machine, the income of the consensus layer is re-invested
     * @param _operatorIds operator id
     * @param _amounts reinvest amounts
     * @param _totalAmount totalAmount
     */
    function reinvestClRewards(
        uint256[] memory _operatorIds,
        uint256[] memory _amounts,
        uint256 _totalAmount
    ) external;

    /**
     * @notice current exchange rate
     */
    function getCurrentExchangeRate() external view returns (uint256);

    function getOperatorNftPoolBalances(
        uint256 _operatorId
    ) external view returns (uint256);

    /**
     * @notice When withdrawing a large amount, update the user's unstake quota
     * @param _operatorId operator id
     * @param _from user address
     * @param _amount unstakeETH amount
     */

    function largeWithdrawalUnstake(
        uint256 _operatorId,
        address _from,
        uint256 _amount
    ) external;

    /**
     * @notice large withdrawals, when users claim eth, will trigger the burning of locked Neth
     * @param _totalRequestNethAmount totalRequestNethAmount will burn
     * @param _to burn neth address
     */
    function largeWithdrawalRequestBurnNeth(
        uint256 _totalRequestNethAmount,
        address _to
    ) external;

    /**
     * @notice When unstakeNFT, if the funds pledged by the user have not been deposited, the user is allowed to withdraw directly
     * @param _operatorId operator id
     * @param _tokenId tokenId
     * @param _to receiving address
     */
    function fastUnstakeNFT(
        uint256 _operatorId,
        uint256 _tokenId,
        address _to
    ) external;

    function registerValidator(
        bytes[] calldata _pubkeys,
        bytes[] calldata _signatures,
        bytes32[] calldata _depositDataRoots
    ) external;

    /**
     * @notice Users claim vNFT rewards
     * @dev There is no need to judge whether this nft belongs to the liquidStaking,
     *      because the liquidStaking cannot directly reward
     * @param _operatorId operator id
     * @param _tokenIds vNFT tokenIds
     * @param _totalNftRewards _totalNftRewards
     * @param _gasHeight update claim gasHeigt
     * @param _owner _owner
     */
    function claimRewardsOfUser(
        uint256 _operatorId,
        uint256[] memory _tokenIds,
        uint256 _totalNftRewards,
        uint256 _gasHeight,
        address _owner
    ) external;

    /**
     * @notice The operator claims the operation reward
     * @param _operatorId operator Id
     * @param _rewardAddresses reward address
     * @param _rewards _rewards
     */
    function claimRewardsOfOperator(
        uint256 _operatorId,
        address[] memory _rewardAddresses,
        uint256[] memory _rewards
    ) external;

    /**
     * @notice The dao claims to belong to the dao reward
     * @param _operatorIds operators Id
     * @param _rewards rewards
     */
    function claimRewardsOfDao(
        uint256[] memory _operatorIds,
        uint256[] memory _rewards
    ) external;

    event OperatorAssigned(
        uint256 indexed _blacklistOperatorId,
        uint256 _operatorId,
        uint256 _totalAmount
    );
    event EthStake(
        uint256 indexed _operatorId,
        address indexed _from,
        uint256 _amount,
        uint256 _amountOut
    );
    event EthUnstake(
        uint256 indexed _operatorId,
        uint256 targetOperatorId,
        address sender,
        uint256 _amounts,
        uint256 amountOut
    );
    event NftStake(
        uint256 indexed _operatorId,
        address indexed _from,
        uint256 _count
    );
    event ValidatorRegistered(
        uint256 indexed _operatorId,
        uint256 _tokenId,
        bytes _pubkey
    );
    event UserClaimRewards(
        uint256 _operatorId,
        uint256[] _tokenIds,
        uint256 _rewards
    );
    event Transferred(address _to, uint256 _amount);
    event AdaptorAddressSet(address _adaptor);
    event OperatorReinvestClRewards(uint256 _operatorId, uint256 _rewards);
    event OperatorReinvestElRewards(uint256 _operatorId, uint256 _rewards);
    event RewardsReceive(uint256 _rewards);
    event LiquidStakingWithdrawalCredentialsSet(
        bytes _oldLiquidStakingWithdrawalCredentials,
        bytes _liquidStakingWithdrawalCredentials
    );
    event WithdrawOracleContractSet(
        address _oldWithdrawOracleContractSet,
        address _withdrawOracleContractSetAddress
    );
    event NodeOperatorRegistryContractSet(
        address _oldNodeOperatorRegistryContract,
        address _nodeOperatorRegistryContract
    );
    event DaoAddressChanged(address _oldDao, address _dao);
    event DaoVaultAddressChanged(
        address _oldDaoVaultAddress,
        address _daoVaultAddress
    );
    event DepositFeeRateSet(uint256 _oldFeeRate, uint256 _feeRate);
    event OperatorClaimRewards(uint256 _operatorId, uint256 _rewards);
    event DaoClaimRewards(uint256 _operatorId, uint256 _rewards);
    event NftExitBlockNumberSet(uint256[] tokenIds, uint256[] exitBlockNumbers);
    event VaultManagerContractSet(
        address vaultManagerContractAddress,
        address _vaultManagerContract
    );
    event ConsensusVaultContractSet(
        address consensusVaultContractAddress,
        address _consensusVaultContract
    );
    event OperatorCanLoanAmountsSet(
        uint256 operatorCanLoanAmounts,
        uint256 _newCanloadAmounts
    );
    event WithdrawalRequestContractSet(
        address _withdrawalRequestContract,
        address _withdrawalRequestContractAddress
    );
    event OperatorSlashContractSet(
        address oldOperatorSlashContract,
        address _operatorSlashContract
    );
    event DepositContractSet(address depositContract, address _depositContract);

    event DepositContractUpdated(
        address indexed oldAddress,
        address indexed newAddress
    );
}

// ============================================================
// FILE: src/interfaces/INETH.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.18;

import "@openzeppelin-contracts/token/ERC20/IERC20.sol";

/**
 * @title Interface for NETH
 */
interface INETH is IERC20 {
    /**
     * @notice mint nETHH
     * @param _amount mint amount
     * @param _account mint account
     */
    function whiteListMint(uint256 _amount, address _account) external;

    /**
     * @notice burn nETHH
     * @param _amount burn amount
     * @param _account burn account
     */
    function whiteListBurn(uint256 _amount, address _account) external;

    event LiquidStakingContractSet(address dao, address _liquidStakingContractAddress);
}

// ============================================================
// FILE: src/interfaces/INodeOperatorsRegistry.sol
// ============================================================

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

/**
 * @title Node Operator registry
 *
 * Registration and management of Node Operator
 */
interface INodeOperatorsRegistry {
    /**
     * @notice Add node operator named `name` with reward address `rewardAddress` and _owner
     * @param _name Human-readable name
     * @param _controllerAddress Ethereum 1 address for the operator's management authority
     * @param _owner operator owner address
     * @param _rewardAddresses reward addresses
     * @param _ratios reward ratios
     * @return id a unique key of the added operator
     */
    function registerOperator(
        string calldata _name,
        address _controllerAddress,
        address _owner,
        address[] calldata _rewardAddresses,
        uint256[] calldata _ratios
    ) external returns (uint256 id);

    /**
     * @notice Set an operator as trusted
     * @param _id operator id
     */
    function setTrustedOperator(uint256 _id) external;

    /**
     * @notice Remove an operator as trusted
     * @param _id operator id
     */
    function removeTrustedOperator(uint256 _id) external;

    /**
     * @notice Set the name of the operator
     * @param _id operator id
     * @param _name operator new name
     */
    function setNodeOperatorName(uint256 _id, string memory _name) external;

    /**
     * @notice Set the rewardAddress of the operator
     * @param _id operator id
     * @param _rewardAddresses Ethereum 1 address which receives ETH rewards for this operator
     * @param _ratios reward ratios
     */
    function setNodeOperatorRewardAddress(uint256 _id, address[] memory _rewardAddresses, uint256[] memory _ratios)
        external;

    /**
     * @notice Set the controllerAddress of the operator
     * @param _id operator id
     * @param _controllerAddress Ethereum 1 address for the operator's management authority
     */
    function setNodeOperatorControllerAddress(uint256 _id, address _controllerAddress) external;

    /**
     * @notice Get information about an operator
     * @param _id operator id
     * @param _fullInfo Get all information
     */
    function getNodeOperator(uint256 _id, bool _fullInfo)
        external
        view
        returns (
            bool trusted,
            string memory name,
            address owner,
            address controllerAddress,
            address vaultContractAddress,
            uint256 registrationBlockNumber 

        );

    /**
     * @notice Get information about an operator vault contract address
     * @param _id operator id
     */
    function getNodeOperatorVaultContract(uint256 _id) external view returns (address vaultContractAddress);

    /**
     * @notice Get operator rewardSetting
     * @param operatorId operator id
     */
    function getNodeOperatorRewardSetting(uint256 operatorId)
        external
        view
        returns (address[] memory, uint256[] memory);

    /**
     * @notice Returns total number of node operators
     */
    function getNodeOperatorsCount() external view returns (uint256);

    /**
     * @notice Returns total number of trusted operators
     */
    function getTrustedOperatorsCount() external view returns (uint256);

    /**
     * @notice Returns whether an operator is trusted
     * @param _id operator id
     */
    function isTrustedOperator(uint256 _id) external view returns (bool);

    /**
     * @notice Returns whether an operator is trusted
     * @param _controllerAddress controller address
     */
    function isTrustedOperatorOfControllerAddress(address _controllerAddress) external view returns (uint256);

    /**
     * @notice get operator comission rate
     * @param _operatorIds operator id
     */
    function getOperatorCommissionRate(uint256[] memory _operatorIds) external view returns (uint256[] memory);
    /**
     * @notice Get operator owner address
     * @param _id operator id
     */
    function getNodeOperatorOwner(uint256 _id) external view returns (address);

    /**
     * @notice Returns whether an operator is Blacklist
     * @param _operatorId operator id
     */
    function isBlacklistOperator(uint256 _operatorId) external view returns (bool);

    /**
     * @notice Returns whether an operator is quit
     * @param _id operator id
     */
    function isQuitOperator(uint256 _id) external view returns (bool);

    event NodeOperatorRegistered(
        uint256 _id,
        string _name,
        address _controllerAddress,
        address _vaultContractAddress,
        address[] _rewardAddresses,
        uint256[] _ratios
    );
    event OperatorQuit(uint256 _operatorId, address operatorOwner);
    event NodeOperatorTrustedSet(uint256 _id, string _name, bool _trusted);
    event NodeOperatorTrustedRemove(uint256 _id, string _name, bool _trusted);
    event NodeOperatorBlacklistSet(uint256 _id);
    event NodeOperatorBlacklistRemove(uint256 _id);
    event NodeOperatorNameSet(uint256 _id, string _name);
    event NodeOperatorRewardAddressSet(uint256 _id, address[] _rewardAddresses, uint256[] _ratios);
    event NodeOperatorControllerAddressSet(uint256 _id, string _name, address _controllerAddress);
    event NodeOperatorOwnerAddressSet(uint256 _id, string _name, address _ownerAddress);
    event Transferred(address _to, uint256 _amount);
    event Withdraw(uint256 _amount, uint256 _operatorId, address _to);
    event LiquidStakingChanged(address _from, address _to);
    event DaoAddressChanged(address _oldDao, address _dao);
    event DaoVaultAddressChanged(address _oldDaoVaultAddress, address _daoVaultAddress);
    event PermissionlessBlockNumberSet(uint256 _blockNumber);
    event OperatorClaimRewards(uint256 _operatorId, uint256 _rewards);
    event DaoClaimRewards(uint256 _operatorId, uint256 _rewards);
    event CommissionRateChanged(uint256 _oldRate, uint256 _rate);
    event OperatorArrearsReduce(uint256 _operatorId, uint256 value);
    event OperatorArrearsIncrease(uint256 _operatorId, uint256 value);
    event VaultFactorContractSet(address _vaultFactoryContract, address _vaultFactoryContractAddress);
    event OperatorVaultContractReset(address _oldVaultContractAddress, address _vaultContractAddress);
    event DefaultOperatorCommissionRateChanged(
        uint256 _oldDefaultOperatorCommission, uint256 _defaultOperatorCommission
    );
}

// ============================================================
// FILE: src/interfaces/IOFT.sol
// ============================================================

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

/**
 * @dev Struct representing token parameters for the OFT send() operation.
 */
struct SendParam {
    uint32 dstEid; // Destination endpoint ID.
    bytes32 to; // Recipient address.
    uint256 amountLD; // Amount to send in local decimals.
    uint256 minAmountLD; // Minimum amount to send in local decimals.
    bytes extraOptions; // Additional options supplied by the caller to be used in the LayerZero message.
    bytes composeMsg; // The composed message for the send() operation.
    bytes oftCmd; // The OFT command to be executed, unused in default OFT implementations.
}

/**
 * @dev Struct representing OFT limit information.
 * @dev These amounts can change dynamically and are up the the specific oft implementation.
 */
struct OFTLimit {
    uint256 minAmountLD; // Minimum amount in local decimals that can be sent to the recipient.
    uint256 maxAmountLD; // Maximum amount in local decimals that can be sent to the recipient.
}

/**
 * @dev Struct representing OFT receipt information.
 */
struct OFTReceipt {
    uint256 amountSentLD; // Amount of tokens ACTUALLY debited from the sender in local decimals.
    // @dev In non-default implementations, the amountReceivedLD COULD differ from this value.
    uint256 amountReceivedLD; // Amount of tokens to be received on the remote side.
}

/**
 * @dev Struct representing OFT fee details.
 * @dev Future proof mechanism to provide a standardized way to communicate fees to things like a UI.
 */
struct OFTFeeDetail {
    int256 feeAmountLD; // Amount of the fee in local decimals.
    string description; // Description of the fee.
}

struct MessagingFee {
    uint256 nativeFee;
    uint256 lzTokenFee;
}

struct MessagingReceipt {
    bytes32 guid;
    uint64 nonce;
    MessagingFee fee;
}

/**
 * @title IOFT
 * @dev Interface for the OftChain (OFT) token.
 * @dev Does not inherit ERC20 to accommodate usage by OFTAdapter as well.
 * @dev This specific interface ID is '0x02e49c2c'.
 */
interface IOFT {

    /**
     * @notice Retrieves interfaceID and the version of the OFT.
     * @return interfaceId The interface ID.
     * @return version The version.
     *
     * @dev interfaceId: This specific interface ID is '0x02e49c2c'.
     * @dev version: Indicates a cross-chain compatible msg encoding with other OFTs.
     * @dev If a new feature is added to the OFT cross-chain msg encoding, the version will be incremented.
     * ie. localOFT version(x,1) CAN send messages to remoteOFT version(x,1)
     */
    function oftVersion() external view returns (bytes4 interfaceId, uint64 version);

    /**
     * @notice Retrieves the address of the token associated with the OFT.
     * @return token The address of the ERC20 token implementation.
     */
    function token() external view returns (address);

    /**
     * @notice Indicates whether the OFT contract requires approval of the 'token()' to send.
     * @return requiresApproval Needs approval of the underlying token implementation.
     *
     * @dev Allows things like wallet implementers to determine integration requirements,
     * without understanding the underlying token implementation.
     */
    function approvalRequired() external view returns (bool);

    /**
     * @notice Retrieves the shared decimals of the OFT.
     * @return sharedDecimals The shared decimals of the OFT.
     */
    function sharedDecimals() external view returns (uint8);

    /**
     * @notice Provides a quote for OFT-related operations.
     * @param _sendParam The parameters for the send operation.
     * @return limit The OFT limit information.
     * @return oftFeeDetails The details of OFT fees.
     * @return receipt The OFT receipt information.
     */
    function quoteOFT(
        SendParam calldata _sendParam
    ) external view returns (OFTLimit memory, OFTFeeDetail[] memory oftFeeDetails, OFTReceipt memory);

    /**
     * @notice Provides a quote for the send() operation.
     * @param _sendParam The parameters for the send() operation.
     * @param _payInLzToken Flag indicating whether the caller is paying in the LZ token.
     * @return fee The calculated LayerZero messaging fee from the send() operation.
     *
     * @dev MessagingFee: LayerZero msg fee
     *  - nativeFee: The native fee.
     *  - lzTokenFee: The lzToken fee.
     */
    function quoteSend(SendParam calldata _sendParam, bool _payInLzToken) external view returns (MessagingFee memory);

    /**
     * @notice Executes the send() operation.
     * @param _sendParam The parameters for the send operation.
     * @param _fee The fee information supplied by the caller.
     *      - nativeFee: The native fee.
     *      - lzTokenFee: The lzToken fee.
     * @param _refundAddress The address to receive any excess funds from fees etc. on the src.
     * @return receipt The LayerZero messaging receipt from the send() operation.
     * @return oftReceipt The OFT receipt information.
     *
     * @dev MessagingReceipt: LayerZero msg receipt
     *  - guid: The unique identifier for the sent message.
     *  - nonce: The nonce of the sent message.
     *  - fee: The LayerZero fee incurred for the message.
     */
    function send(
        SendParam calldata _sendParam,
        MessagingFee calldata _fee,
        address _refundAddress
    ) external payable returns (MessagingReceipt memory, OFTReceipt memory);
}

// ============================================================
// FILE: src/interfaces/IVaultManager.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

import {WithdrawInfo, ExitValidatorInfo} from "../library/ConsensusStruct.sol";
/**
 * @title Interface for IVaultManager
 * @notice Vault will manage methods for rewards, commissions, tax
 */

interface IVaultManager {
    /**
     * @notice Settlement and reinvestment execution layer rewards
     * @param _operatorIds operator id
     */
    function settleAndReinvestElReward(uint256[] memory _operatorIds) external;

    /**
     * @notice Receive the oracle machine consensus layer information, initiate re-investment consensus layer rewards, trigger and update the exited nft
     * @param _withdrawInfo withdraw info
     * @param _exitValidatorInfo exit validator info
     * @param _nftExitDelayedTokenIds nft with delayed exit
     * @param _largeExitDelayedRequestIds large Requests for Delayed Exit
     * @param _thisTotalWithdrawAmount The total settlement amount reported this time
     */
    function reportConsensusData(
        WithdrawInfo[] memory _withdrawInfo,
        ExitValidatorInfo[] memory _exitValidatorInfo,
        uint256[] memory _nftExitDelayedTokenIds, // user nft
        uint256[] memory _largeExitDelayedRequestIds, // large unstake request id
        uint256 _thisTotalWithdrawAmount
    ) external;
}

// ============================================================
// FILE: src/interfaces/IVNFT.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

import "../../lib/ERC721A-Upgradeable/contracts/IERC721AUpgradeable.sol";

interface IVNFT is IERC721AUpgradeable {
    function activeNfts() external view returns (uint256[] memory);

    /**
     * @notice Returns the validators that are active (may contain validator that are yet active on beacon chain)
     */
    function activeValidatorsOfStakingPool() external view returns (bytes[] memory);

    /**
     * @notice Returns the tokenId that are active (may contain validator that are yet active on beacon chain)
     */
    function activeNftsOfStakingPool() external view returns (uint256[] memory);

    /**
     * @notice get empty nft counts
     */
    function getEmptyNftCounts() external view returns (uint256);

    /**
     * @notice Checks if a validator exists
     * @param _pubkey - A 48 bytes representing the validator's public key
     */
    function validatorExists(bytes calldata _pubkey) external view returns (bool);

    /**
     * @notice Finds the validator's public key of a nft
     * @param _tokenId - tokenId of the validator nft
     */
    function validatorOf(uint256 _tokenId) external view returns (bytes memory);

    /**
     * @notice Finds all the validator's public key of a particular address
     * @param _owner - The particular address
     */
    function validatorsOfOwner(address _owner) external view returns (bytes[] memory);

    /**
     * @notice Finds the operator id of a nft
     * @param _tokenId - tokenId of the validator nft
     */
    function operatorOf(uint256 _tokenId) external view returns (uint256);

    /**
     * @notice Get the number of operator's active nft
     * @param _operatorId - operator id
     */
    function getActiveNftCountsOfOperator(uint256 _operatorId) external view returns (uint256);

    /**
     * @notice Get the number of operator's empty nft
     * @param _operatorId - operator id
     */
    function getEmptyNftCountsOfOperator(uint256 _operatorId) external view returns (uint256);

    /**
     * @notice Get the number of user's active nft
     * @param _operatorId - operator id
     */
    function getUserActiveNftCountsOfOperator(uint256 _operatorId) external view returns (uint256);

    /**
     * @notice Finds the tokenId of a validator
     * @dev Returns MAX_SUPPLY if not found
     * @param _pubkey - A 48 bytes representing the validator's public key
     */
    function tokenOfValidator(bytes calldata _pubkey) external view returns (uint256);

    /**
     * @notice Returns the last owner before the nft is burned
     * @param _tokenId - tokenId of the validator nft
     */
    function lastOwnerOf(uint256 _tokenId) external view returns (address);

    /**
     * @notice Mints a Validator nft (vNFT)
     * @param _pubkey -  A 48 bytes representing the validator's public key
     * @param _to - The recipient of the nft
     * @param _operatorId - The operator repsonsible for operating the physical node
     */
    function whiteListMint(
        bytes calldata _pubkey,
        bytes calldata _withdrawalCredentials,
        address _to,
        uint256 _operatorId
    ) external returns (uint256);

    /**
     * @notice Burns a Validator nft (vNFT)
     * @param _tokenId - tokenId of the validator nft
     */
    function whiteListBurn(uint256 _tokenId) external;

    /**
     * @notice Obtain the withdrawal voucher used by tokenid,
     * if it is bytes(""), it means it is not the user's nft, and the voucher will be the withdrawal contract address of the nodedao protocol
     * @param _tokenId - tokenId
     */
    function getUserNftWithdrawalCredentialOfTokenId(uint256 _tokenId) external view returns (bytes memory);

    /**
     * @notice The operator obtains the withdrawal voucher to be used for the next registration of the validator.
     *  // If it is bytes (""), it means that it is not the user's NFT, and the voucher will be the withdrawal contract address of the nodedao protocol.
     * @param _operatorId - operatorId
     */
    function getNextValidatorWithdrawalCredential(uint256 _operatorId) external view returns (bytes memory);

    /**
     * @notice set nft exit height
     * @param _tokenIds - tokenIds
     * @param _exitBlockNumbers - tokenIds
     */
    function setNftExitBlockNumbers(uint256[] memory _tokenIds, uint256[] memory _exitBlockNumbers) external;

    /**
     * @notice Get the number of nft exit height
     * @param _tokenIds - tokenIds
     */
    function getNftExitBlockNumbers(uint256[] memory _tokenIds) external view returns (uint256[] memory);

    /**
     * @notice set nft gas height
     * @param _tokenId - tokenId
     * @param _number - gas height
     */
    function setUserNftGasHeight(uint256 _tokenId, uint256 _number) external;

    /**
     * @notice Get the number of user's nft gas height
     * @param _tokenIds - tokenIds
     */
    function getUserNftGasHeight(uint256[] memory _tokenIds) external view returns (uint256[] memory);

    /**
     * @notice Get the number of total active nft counts
     */
    function getTotalActiveNftCounts() external view returns (uint256);
}

// ============================================================
// FILE: src/interfaces/IWithdrawalRequest.sol
// ============================================================

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.18;

/**
 * @title Interface for WithdrawalRequest
 * @notice WithdrawalRequest contract
 */
interface IWithdrawalRequest {
    /**
     * @notice get nft unstake block number
     * @param _tokenId token id
     */
    function getNftUnstakeBlockNumber(uint256 _tokenId) external view returns (uint256);

    /**
     * @notice Get information about Withdrawal request
     * @param  _requestId request Id
     */
    function getWithdrawalOfRequestId(uint256 _requestId)
        external
        view
        returns (uint256, uint256, uint256, uint256, uint256, address, bool);

    /**
     * @notice Get information about operator's withdrawal request
     * @param  _operatorId operator Id
     */
    function getOperatorLargeWithdrawalPendingInfo(uint256 _operatorId) external view returns (uint256, uint256);

    /**
     * @notice receive eth for withdrawals
     * @param _operatorId _operator id
     * @param  _amount receive fund amount
     */
    function receiveWithdrawals(uint256 _operatorId, uint256 _amount) external payable;

    /**
     * @notice getTotalPendingClaimedAmounts: Used when calculating exchange rates
     */
    function getTotalPendingClaimedAmounts() external view returns (uint256);
}

// ============================================================
// FILE: src/interfaces/IWithdrawOracle.sol
// ============================================================

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

interface IWithdrawOracle {
    /**
     * @return {uint256} The total balance of the consensus layer
     */
    function getClBalances() external view returns (uint256);

    /**
     * @return {uint256} Consensus Vault contract balance
     */
    function getClVaultBalances() external view returns (uint256);

    /**
     * @return {uint256} Consensus reward settle amounte
     */
    function getLastClSettleAmount() external view returns (uint256);

    /**
     * @return {uint256} The total balance of the pending validators
     */
    function getPendingBalances() external view returns (uint256);

    /**
     * @notice add pending validator value
     */
    function addPendingBalances(uint256 _pendingBalance) external;
}

// ============================================================
// FILE: src/library/ConsensusStruct.sol
// ============================================================

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

struct WithdrawInfo {
    uint64 operatorId;
    // The income that should be issued by this operatorId in this settlement
    uint96 clReward;
    // For this settlement, whether operatorId has exit node, if no exit node is 0;
    // The value of one node exiting is 32 eth(or 32.9 ETH), and the value of two nodes exiting is 64eth (or 63 ETH).
    // If the value is less than 32, the corresponding amount will be punished
    // clCapital is the principal of nft exit held by the protocol
    uint96 clCapital;
}

struct ExitValidatorInfo {
    // Example Exit the token Id of the validator. No exit is an empty array.
    uint64 exitTokenId;
    // Height of exit block
    uint96 exitBlockNumber;

}

// ============================================================
// FILE: src/LiquidStaking.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {OwnableUpgradeable} from "@openzeppelin-contracts-upgradeable/access/OwnableUpgradeable.sol";
import {Initializable} from "@openzeppelin-contracts-upgradeable/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "@openzeppelin-contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin-contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin-contracts-upgradeable/security/PausableUpgradeable.sol";
import {INodeOperatorsRegistry} from "./interfaces/INodeOperatorsRegistry.sol";
import {ILiquidStaking} from "./interfaces/ILiquidStaking.sol";
import {INETH} from "./interfaces/INETH.sol";
import {IVNFT} from "./interfaces/IVNFT.sol";
import {IDepositContract} from "./deposit/DepositContract.sol";
import {IWithdrawOracle} from "./interfaces/IWithdrawOracle.sol";
import {IELVault} from "./interfaces/IELVault.sol";
import {ERC721A__IERC721ReceiverUpgradeable} from "ERC721A-Upgradeable/ERC721AUpgradeable.sol";
import {IConsensusVault} from "./interfaces/IConsensusVault.sol";
import {IVaultManager} from "./interfaces/IVaultManager.sol";
import {IWithdrawalRequest} from "./interfaces/IWithdrawalRequest.sol";
import {IOFT, SendParam, MessagingFee} from "./interfaces/IOFT.sol";

/**
 * @title MultichainzLSD LiquidStaking Contract
 *
 * MultichainzLSD is a DAO that provides decentralized solutions for Ethereum liquidity,
 * The MultichainzLSD protocol is a smart contract for next-generation liquid staking derivatives,
 * which includes all the concepts of traditional liquid staking, re-staking, distributed validators, and validator NFTs in a single protocol.
 *
 * Our vision is to use our innovative liquidity solution to provide more options for the Ethereum liquidity market,
 * thereby making Ethereum staking more decentralized.
 */
contract LiquidStaking is
    ILiquidStaking,
    Initializable,
    UUPSUpgradeable,
    ReentrancyGuardUpgradeable,
    OwnableUpgradeable,
    PausableUpgradeable,
    ERC721A__IERC721ReceiverUpgradeable
{
    IDepositContract public depositContract;

    INodeOperatorsRegistry public nodeOperatorRegistryContract;

    INETH public nETHContract;

    IVNFT public vNFTContract;

    IWithdrawOracle public withdrawOracleContract;

    bytes public liquidStakingWithdrawalCredentials;

    // deposit fee rate
    uint256 public depositFeeRate; // 1% to 5%
    uint256 internal constant totalBasisPoints = 10000;

    uint256 internal constant DEPOSIT_SIZE = 32 ether;

    // operator's internal stake pool, key is operator_id
    mapping(uint256 => uint256) public operatorPoolBalances;

    // unused funds in the current liquidStaking pool
    uint256 internal operatorPoolBalancesSum;

    // State variables for Time-weighted Average Exchange Rate (TWAER)
    uint256 private contractStartTime;
    uint256 private lastUpdateTime;
    uint256 private cumulativeExchangeRate;

    // dao address
    address public dao;
    // dao treasury address
    address public daoVaultAddress;

    // v2 storage

    address public vaultManagerContractAddress;
    IConsensusVault public consensusVaultContract;
    IWithdrawalRequest public withdrawalRequestContract;

    // operator's internal nft stake pool, key is operator_id
    mapping(uint256 => uint256) public operatorNftPoolBalances;

    struct StakeInfo {
        uint256 operatorId;
        uint256 quota;
    }
    //store validator nft transfer details
    struct nftToken {
        address operator;
        address from;
        uint256 tokenId;
        bytes data;
    }

    // Mapping from tokenId to its details
    mapping(uint256 => nftToken) public receivedTokens;

    // key is user address, value is StakeInfo
    mapping(address => StakeInfo[]) internal stakeRecords;

    // key is quit operatorId, value is asign operatorId
    mapping(uint256 => uint256) public reAssignRecords;

    uint256 public operatorCanLoanAmounts;

    // key is operatorId, value is loan amounts
    mapping(uint256 => uint256) public operatorLoanRecords;
    // key is operatorId, value is loan blockNumber
    mapping(uint256 => uint256) public operatorLoadBlockNumbers;

    IOFT public xETHAdaptor;

    error PermissionDenied();
    error RequireBlacklistOperator();
    error AssignMustSameOperator();
    error InvalidParameter();
    error RequireOperatorTrusted();
    error InvalidAmount();
    error InvalidDaoVaultAddr();
    error UnstakeEthNoQuota();
    error OperatorLoanFailed();
    error InvalidWithdrawalCredentials();
    error InsufficientFunds();
    error OperatorHasArrears();
    error TotalEthIsZero();
    error TransferFailed();

    modifier onlyDao() {
        if (msg.sender != dao) revert PermissionDenied();
        _;
    }

    modifier onlyVaultManager() {
        if (msg.sender != vaultManagerContractAddress)
            revert PermissionDenied();
        _;
    }

    modifier onlyWithdrawalRequest() {
        if (msg.sender != address(withdrawalRequestContract))
            revert PermissionDenied();
        _;
    }

    function _authorizeUpgrade(address) internal override onlyOwner {}

    /**
     * @notice For operators added to the blacklist by dao,
     *
     * The Dao has the right to distribute the available balance on this operator to other active operators,
     * and the allocation share will be determined through proposals
     * @param _assignOperatorId blacklist operator id
     * @param _operatorId The operator id of the allocation share
     */
    function assignOperator(
        uint256 _assignOperatorId,
        uint256 _operatorId
    ) external onlyOwner {
        if (!nodeOperatorRegistryContract.isTrustedOperator(_operatorId))
            revert RequireOperatorTrusted();
        if (
            !nodeOperatorRegistryContract.isBlacklistOperator(_assignOperatorId)
        ) revert RequireBlacklistOperator();

        uint256 assignOperatorBalances = _assignOperator(
            _assignOperatorId,
            _operatorId
        );

        // Re-assign and ensure the balance transfer is properly handled.
        reAssignRecords[_assignOperatorId] = _operatorId;
        emit OperatorAssigned(
            _assignOperatorId,
            _operatorId,
            assignOperatorBalances
        );
    }

    function _assignOperator(
        uint256 _assignOperatorId,
        uint256 _operatorId
    ) internal returns (uint256) {
        uint256 assignOperatorBalances = operatorPoolBalances[
            _assignOperatorId
        ];
        uint256 loanAmounts = operatorLoanRecords[_assignOperatorId];
        if (loanAmounts > 0) {
            if (loanAmounts > assignOperatorBalances) {
                operatorLoanRecords[
                    _assignOperatorId
                ] -= assignOperatorBalances;
                assignOperatorBalances = 0;
            } else {
                operatorLoanRecords[_assignOperatorId] = 0;
                assignOperatorBalances -= loanAmounts;
            }
        }

        operatorPoolBalances[_operatorId] += assignOperatorBalances;
        operatorPoolBalances[_assignOperatorId] = 0;

        return assignOperatorBalances;
    }

    /**
     * @notice stake eth to designated operator, stake ETH to get nETH
     * @param _operatorId operator id
     */
    function stakeETH(
        uint256 _operatorId,
        address onBehalfOf
    ) external payable nonReentrant whenNotPaused {
        if (msg.value < 1000 gwei) revert InvalidAmount();

        // Ensure operator is trusted and has sufficient pledge
        if (!nodeOperatorRegistryContract.isTrustedOperator(_operatorId))
            revert RequireOperatorTrusted();

        // Calculate and transfer the deposit fee if applicable
        uint256 depositFeeAmount = 0;
        uint256 depositPoolAmount = msg.value;
        if (depositFeeRate > 0) {
            depositFeeAmount = (msg.value * depositFeeRate) / totalBasisPoints;
            depositPoolAmount = msg.value - depositFeeAmount;
            if (daoVaultAddress == address(0)) revert InvalidDaoVaultAddr();
            payable(daoVaultAddress).transfer(depositFeeAmount);
        }

        // Update exchange rate before minting nETH
        _updateCumulativeExchangeRate();
        uint256 currentRate = _getCurrentExchangeRate();
        //Convert ETH to nETH
        uint256 amountOut = (depositPoolAmount * 1e18) / currentRate;

        address receiver = onBehalfOf == address(0) ? msg.sender : onBehalfOf;

        nETHContract.whiteListMint(amountOut, receiver);
        _updateStakeFundLedger(_operatorId, depositPoolAmount);
        _stakeRecords(_operatorId, receiver, amountOut);

        emit EthStake(_operatorId, receiver, msg.value, amountOut);
    }

    function _updateStakeFundLedger(
        uint256 _operatorId,
        uint256 _amount
    ) internal {
        operatorPoolBalancesSum += _amount;

        uint256 loanAmounts = operatorLoanRecords[_operatorId];
        if (loanAmounts > 0) {
            if (loanAmounts > _amount) {
                operatorLoanRecords[_operatorId] -= _amount;
                _amount = 0;
            } else {
                operatorLoanRecords[_operatorId] = 0;
                operatorLoadBlockNumbers[_operatorId] = 0;
                _amount = _amount - loanAmounts;
            }
        }

        if (_amount > 0) {
            operatorPoolBalances[_operatorId] += _amount;
        }
    }

    function _stakeRecords(
        uint256 _operatorId,
        address _from,
        uint256 _amount
    ) internal {
        StakeInfo[] memory records = stakeRecords[_from];
        if (records.length == 0) {
            stakeRecords[_from].push(
                StakeInfo({operatorId: _operatorId, quota: _amount})
            );
        } else {
            for (uint256 i = 0; i < records.length; ++i) {
                if (records[i].operatorId == _operatorId) {
                    stakeRecords[_from][i].quota += _amount;
                    return;
                }
            }

            stakeRecords[_from].push(
                StakeInfo({operatorId: _operatorId, quota: _amount})
            );
        }
    }

    /**
     * @notice unstake neth to designated operator
     * @param _operatorId operator id
     * @param _amounts untake neth amount
     */
    function unstakeETH(
        //TO DO
        uint256 _operatorId,
        uint256 _amounts,
        address payable onBehalfOf
    ) public nonReentrant whenNotPaused returns (uint256) {
        if (nETHContract.balanceOf(msg.sender) < _amounts)
            revert InsufficientFunds();

        address payable receiver = onBehalfOf == address(0)
            ? payable(msg.sender)
            : onBehalfOf;
        // Update the exchange rate before processing the unstake
        _updateCumulativeExchangeRate();
        uint256 currentRate = _getCurrentExchangeRate();
        uint256 amountOut = (_amounts * currentRate) / 1e18; // Convert nETH to ETH
        uint256 refundDepositFeeAmount = (amountOut * depositFeeRate) /
            totalBasisPoints;
        uint256 newAmountOut = amountOut + refundDepositFeeAmount;

        _unstake(_operatorId, receiver, _amounts);
        uint256 targetOperatorId = _updateUnstakeFundLedger(
            amountOut,
            _operatorId
        );

        nETHContract.whiteListBurn(_amounts, msg.sender);
        (bool ok, ) = receiver.call{value: newAmountOut}("");
        if (!ok) revert TransferFailed();

        emit EthUnstake(
            _operatorId,
            targetOperatorId,
            msg.sender,
            _amounts,
            amountOut
        );
        return amountOut;
    }

    function _unstake(
        uint256 _operatorId,
        address _from,
        uint256 _amount
    ) internal {
        StakeInfo[] memory records = stakeRecords[_from];
        if (records.length == 0) revert UnstakeEthNoQuota();

        for (uint256 i = 0; i < records.length; ++i) {
            if (records[i].operatorId == _operatorId) {
                if (stakeRecords[_from][i].quota < _amount)
                    revert UnstakeEthNoQuota();
                stakeRecords[_from][i].quota -= _amount;
                return;
            }
        }

        revert UnstakeEthNoQuota();
    }

    function _updateUnstakeFundLedger(
        uint256 _ethOutAmount,
        uint256 _operatorId
    ) internal returns (uint256) {
        uint256 targetOperatorId = _resolveFinalOperator(_operatorId);

        uint256 operatorBalances = operatorPoolBalances[targetOperatorId];
        if (operatorBalances >= _ethOutAmount) {
            operatorPoolBalances[targetOperatorId] -= _ethOutAmount;
        } else {
            // Handle the scenario where the balance is insufficient.
            _handleInsufficientBalance(targetOperatorId, _ethOutAmount);
        }

        operatorPoolBalancesSum -= _ethOutAmount;

        return targetOperatorId;
    }

    function _resolveFinalOperator(
        uint256 _operatorId
    ) internal view returns (uint256) {
        while (reAssignRecords[_operatorId] != 0) {
            _operatorId = reAssignRecords[_operatorId];
        }
        return _operatorId;
    }

    function _handleInsufficientBalance(
        uint256 targetOperatorId,
        uint256 _ethOutAmount
    ) internal {
        uint256 newLoanAmounts = _ethOutAmount -
            operatorPoolBalances[targetOperatorId];
        uint256 operatorLoanAmounts = operatorLoanRecords[targetOperatorId];

        if (operatorCanLoanAmounts >= (operatorLoanAmounts + newLoanAmounts)) {
            operatorLoanRecords[targetOperatorId] += newLoanAmounts;
            operatorPoolBalances[targetOperatorId] = 0;
        } else {
            revert OperatorLoanFailed();
        }
    }

    /**
     * @notice Stake 32 multiples of eth to get the corresponding number of vNFTs
     * @param _operatorId operator id
     */
    function stakeNFT(
        uint256 _operatorId
    ) external payable nonReentrant whenNotPaused {
        // operatorId must be a trusted operator
        if (!nodeOperatorRegistryContract.isTrustedOperator(_operatorId))
            revert RequireOperatorTrusted();
        if (msg.value == 0 || msg.value % DEPOSIT_SIZE != 0)
            revert InvalidAmount();

        uint256 mintNftsCount = msg.value / DEPOSIT_SIZE;
        for (uint256 i = 0; i < mintNftsCount; ++i) {
            vNFTContract.whiteListMint(
                bytes(""),
                liquidStakingWithdrawalCredentials,
                msg.sender,
                _operatorId
            );
        }

        operatorNftPoolBalances[_operatorId] += msg.value;

        emit NftStake(_operatorId, msg.sender, mintNftsCount);
    }

    /**
     * Operator function
     * @notice registers validators on network by operator
     * @param _pubkeys validator pubkeys
     * @param _signatures validator signatures
     * @param _depositDataRoots validator depositDataRoots
     */
    function registerValidator(
        bytes[] calldata _pubkeys,
        bytes[] calldata _signatures,
        bytes32[] calldata _depositDataRoots
    ) external nonReentrant whenNotPaused {
        if (
            _pubkeys.length != _signatures.length ||
            _pubkeys.length != _depositDataRoots.length
        ) {
            revert InvalidParameter();
        }
        // must be a trusted operator
        uint256 operatorId = nodeOperatorRegistryContract
            .isTrustedOperatorOfControllerAddress(msg.sender);
        if (operatorId == 0) revert RequireOperatorTrusted();

        if (
            (operatorPoolBalances[operatorId] +
                operatorNftPoolBalances[operatorId]) /
                DEPOSIT_SIZE <
            _pubkeys.length
        ) {
            revert InsufficientFunds();
        }

        uint256 userValidatorNumber = 0;
        for (uint256 i = 0; i < _pubkeys.length; ++i) {
            uint256 count = _stakeAndMint(
                operatorId,
                _pubkeys[i],
                _signatures[i],
                _depositDataRoots[i]
            );
            userValidatorNumber += count;
        }

        uint256 stakeAmount = DEPOSIT_SIZE * _pubkeys.length;
        uint256 userStakeAmount = DEPOSIT_SIZE * userValidatorNumber;
        uint256 poolStakeAmount = stakeAmount - userStakeAmount;
        operatorPoolBalances[operatorId] -= poolStakeAmount;
        operatorPoolBalancesSum -= poolStakeAmount;

        //added operation
        operatorNftPoolBalances[operatorId] -= userStakeAmount;

        // Ensure the operatorPoolBalances does not underflow
        require(operatorPoolBalances[operatorId] >= 0, "Pool underflow");
        require(operatorPoolBalancesSum >= 0, "Pool underflow");

        withdrawOracleContract.addPendingBalances(poolStakeAmount);
    }

    function _stakeAndMint(
        uint256 _operatorId,
        bytes calldata _pubkey,
        bytes calldata _signature,
        bytes32 deposit_data_root
    ) internal returns (uint256) {
        //beacon deposit
        depositContract.deposit{value: 32 ether}(
            _pubkey,
            liquidStakingWithdrawalCredentials,
            _signature,
            deposit_data_root
        );

        uint256 tokenId = vNFTContract.whiteListMint(
            _pubkey,
            liquidStakingWithdrawalCredentials,
            address(this),
            _operatorId
        );

        emit ValidatorRegistered(_operatorId, tokenId, _pubkey);

        return 1;
    }


    /**
     * @notice Update the status of the corresponding nft according to the report result of the oracle machine
     * @param _tokenIds token id
     * @param _exitBlockNumbers exit block number
     */
    function nftExitHandle(
        uint256[] memory _tokenIds,
        uint256[] memory _exitBlockNumbers
    ) external onlyVaultManager {
        // Sanity check: Ensure the lengths of _tokenIds and _exitBlockNumbers match
        require(_tokenIds.length == _exitBlockNumbers.length);

        vNFTContract.setNftExitBlockNumbers(_tokenIds, _exitBlockNumbers);

        for (uint256 i = 0; i < _tokenIds.length; ++i) {
            uint256 tokenId = _tokenIds[i];
            if (vNFTContract.ownerOf(tokenId) == address(this)) {
                vNFTContract.whiteListBurn(tokenId);
            }
        }

        emit NftExitBlockNumberSet(_tokenIds, _exitBlockNumbers);
    }

    /**
     * @notice According to the settlement results of the vaultManager, the income of the re-investment execution layer
     * @param _operatorIds operator id
     * @param _amounts reinvest amounts
     */
    function reinvestElRewards(
        uint256[] memory _operatorIds,
        uint256[] memory _amounts
    ) external onlyVaultManager {
        if (_operatorIds.length != _amounts.length) revert InvalidParameter();
        for (uint256 i = 0; i < _operatorIds.length; ++i) {
            uint256 operatorId = _operatorIds[i];
            uint256 _amount = _amounts[i];
            if (_amount == 0) {
                continue;
            }

            address vaultContractAddress = nodeOperatorRegistryContract
                .getNodeOperatorVaultContract(operatorId);
            IELVault(vaultContractAddress).reinvestment(_amount);

            _updateStakeFundLedger(operatorId, _amount);
            emit OperatorReinvestElRewards(operatorId, _amount);
        }
    }

    /**
     * @notice According to the reported results of the oracle machine, the income of the consensus layer is re-invested
     * @param _operatorIds operator id
     * @param _amounts reinvest amounts
     * @param _totalAmount totalAmount
     */
    function reinvestClRewards(
        uint256[] memory _operatorIds,
        uint256[] memory _amounts,
        uint256 _totalAmount
    ) external onlyVaultManager {
        if (_operatorIds.length != _amounts.length) revert InvalidParameter();
        consensusVaultContract.reinvestment(_totalAmount);

        uint256 totalReinvestRewards = 0;
        for (uint256 i = 0; i < _operatorIds.length; ++i) {
            uint256 operatorId = _operatorIds[i];
            uint256 _amount = _amounts[i];
            if (_amount == 0) {
                continue;
            }
            totalReinvestRewards += _amount;

            uint256 operatorPendingRequestAmount;
            uint256 operatorPendingPool;
            (
                operatorPendingRequestAmount,
                operatorPendingPool
            ) = withdrawalRequestContract.getOperatorLargeWithdrawalPendingInfo(
                operatorId
            );
            if (operatorPendingPool < operatorPendingRequestAmount) {
                uint256 withdrawalAmounts = 0;
                if (
                    operatorPendingPool + _amount >=
                    operatorPendingRequestAmount
                ) {
                    withdrawalAmounts =
                        operatorPendingRequestAmount -
                        operatorPendingPool;
                    _amount -= withdrawalAmounts;
                } else {
                    withdrawalAmounts = _amount;
                    _amount = 0;
                }
                withdrawalRequestContract.receiveWithdrawals{
                    value: withdrawalAmounts
                }(operatorId, withdrawalAmounts);
            }
            if (_amount != 0) {
                _updateStakeFundLedger(operatorId, _amount);
                emit OperatorReinvestClRewards(operatorId, _amount);
            }
        }

        if (_totalAmount != totalReinvestRewards) revert InvalidParameter();
    }

    /**
     * @notice When withdrawing a large amount, update the user's unstake quota
     * @param _operatorId operator id
     * @param _from user address
     * @param _amount unstakeETH amount
     */
    function largeWithdrawalUnstake(
        uint256 _operatorId,
        address _from,
        uint256 _amount
    ) external onlyWithdrawalRequest {
        _unstake(_operatorId, _from, _amount);
    }

    /**
     * @notice large withdrawals, when users claim eth, will trigger the burning of locked Neth
     * @param _totalRequestNethAmount totalRequestNethAmount will burn
     * @param _to burn neth address
     */
    function largeWithdrawalRequestBurnNeth(
        uint256 _totalRequestNethAmount,
        address _to
    ) external onlyWithdrawalRequest {
        nETHContract.whiteListBurn(_totalRequestNethAmount, address(_to));
    }

    /**
     * @notice When unstakeNFT, if the funds pledged by the user have not been deposited, the user is allowed to withdraw directly
     * @param _operatorId operator id
     * @param _tokenId tokenId
     * @param _to receiving address
     */

    function fastUnstakeNFT(
        uint256 _operatorId,
        uint256 _tokenId,
        address _to
    ) external onlyWithdrawalRequest {
        operatorNftPoolBalances[_operatorId] -= DEPOSIT_SIZE;

        payable(_to).transfer(DEPOSIT_SIZE);
        emit Transferred(_to, DEPOSIT_SIZE);
        vNFTContract.whiteListBurn(_tokenId);
    }

    /**
     * @notice Obtain the available amount that the user can unstake
     * @param _from user addresss
     */
    function getUnstakeQuota(
        address _from
    ) public view returns (StakeInfo[] memory) {
        return stakeRecords[_from];
    }

    /**
     * @notice Obtain the unstake amount available for users under a certain operator
     * @param _operatorId operator Id
     */
    function getOperatorNethUnstakePoolAmounts(
        uint256 _operatorId
    ) public view returns (uint256) {
        uint256 targetOperatorId = _operatorId;
        bool isQuit = nodeOperatorRegistryContract.isQuitOperator(_operatorId);
        if (isQuit) {
            uint256 reAssignOperatorId = reAssignRecords[_operatorId];
            if (reAssignOperatorId != 0) {
                targetOperatorId = reAssignOperatorId;
            }
        }

        uint256 operatorBalances = operatorPoolBalances[targetOperatorId];

        uint256 operatorLoanAmounts = operatorLoanRecords[targetOperatorId];

        if (operatorLoanAmounts >= operatorCanLoanAmounts) {
            return operatorBalances;
        }

        uint256 totalUnstakePoolAmounts = operatorBalances +
            operatorCanLoanAmounts -
            operatorLoanAmounts;
        if (totalUnstakePoolAmounts > operatorPoolBalancesSum) {
            return operatorPoolBalancesSum;
        }

        return totalUnstakePoolAmounts;
    }

    /**
     * @notice Users claim vNFT rewards
     * @dev There is no need to judge whether this nft belongs to the liquidStaking,
     *      because the liquidStaking cannot directly reward
     * @param _operatorId operator id
     * @param _tokenIds vNFT tokenIds
     * @param _totalNftRewards _totalNftRewards
     * @param _gasHeight update claim gasHeight
     * @param _owner _owner
     */
    function claimRewardsOfUser(
        uint256 _operatorId,
        uint256[] memory _tokenIds,
        uint256 _totalNftRewards,
        uint256 _gasHeight,
        address _owner
    ) external nonReentrant whenNotPaused onlyVaultManager {
        if (_tokenIds.length == 0 || _gasHeight > block.number)
            revert InvalidParameter();

        uint256[] memory exitBlockNumbers = vNFTContract.getNftExitBlockNumbers(
            _tokenIds
        );

        for (uint256 i = 0; i < _tokenIds.length; ++i) {
            uint256 tokenId = _tokenIds[i];

            if (exitBlockNumbers[i] != 0) {
                vNFTContract.whiteListBurn(tokenId);
            } else {
                vNFTContract.setUserNftGasHeight(tokenId, _gasHeight);
            }
        }

        address vaultContractAddress = nodeOperatorRegistryContract
            .getNodeOperatorVaultContract(_operatorId);
        IELVault(vaultContractAddress).transfer(_totalNftRewards, _owner);

        emit UserClaimRewards(_operatorId, _tokenIds, _totalNftRewards);
    }

    /**
     * @notice The operator claims the operation reward
     * @param _operatorId operator Id
     * @param _rewardAddresses reward address
     * @param _rewards _rewards
     */
    function claimRewardsOfOperator(
        uint256 _operatorId,
        address[] memory _rewardAddresses,
        uint256[] memory _rewards
    ) external nonReentrant whenNotPaused onlyVaultManager {
        // Sanity check: Ensure the lengths of _rewardAddresses and _rewards match
        if (_rewardAddresses.length != _rewards.length)
            revert InvalidParameter();

        if (operatorLoanRecords[_operatorId] != 0) revert OperatorHasArrears();
        address vaultContractAddress = nodeOperatorRegistryContract
            .getNodeOperatorVaultContract(_operatorId);

        for (uint256 i = 0; i < _rewardAddresses.length; ++i) {
            IELVault(vaultContractAddress).transfer(
                _rewards[i],
                _rewardAddresses[i]
            );
        }
    }

    /**
     * @notice The dao claims to belong to the dao reward
     * @param _operatorIds operators Id
     * @param _rewards rewards
     */
    function claimRewardsOfDao(
        uint256[] memory _operatorIds,
        uint256[] memory _rewards
    ) external nonReentrant whenNotPaused onlyVaultManager {
        // Sanity check: Ensure the lengths of _operatorIds and _rewards match
        if (_operatorIds.length != _rewards.length || _rewards.length == 0)
            revert InvalidParameter();
        for (uint256 i = 0; i < _operatorIds.length; ++i) {
            uint256 _operatorId = _operatorIds[i];
            address vaultContractAddress = nodeOperatorRegistryContract
                .getNodeOperatorVaultContract(_operatorId);
            IELVault(vaultContractAddress).transfer(
                _rewards[i],
                daoVaultAddress
            );
            emit DaoClaimRewards(_operatorId, _rewards[i]);
        }
    }

    /**
     * @notice Get the total amount of ETH in the protocol
     */
    function getTotalEthValue() public view returns (uint256) {
        return
            operatorPoolBalancesSum +
            withdrawOracleContract.getPendingBalances() +
            withdrawOracleContract.getClBalances() +
            withdrawOracleContract.getClVaultBalances() -
            withdrawOracleContract.getLastClSettleAmount() -
            withdrawalRequestContract.getTotalPendingClaimedAmounts();
    }

    /**
     * @notice nETH to ETH exchange rate
     * @param _nethAmountIn nETH amount
     */
    function _getEthOut(uint256 _nethAmountIn) internal view returns (uint256) {
        uint256 totalEth = getTotalEthValue();
        uint256 nethSupply = nETHContract.totalSupply();
        if (nethSupply == 0) {
            return _nethAmountIn;
        }

        return (_nethAmountIn * (totalEth)) / (nethSupply);
    }

    /**
     * @notice current exchange rate
     */
    function getCurrentExchangeRate() external view returns (uint256) {
        return _getCurrentExchangeRate();
    }

    function _getExchangeRate() internal view returns (uint256) {
        return _getEthOut(1 ether);
    }

    // Update the cumulativeRate based on the time-weighted average
    function _updateCumulativeExchangeRate() internal {
        uint256 currentTime = block.timestamp;
        uint256 timeElapsed = currentTime - lastUpdateTime;

        // Ensure at least some time has passed
        if (timeElapsed > 0) {
            uint256 currentRate = _getExchangeRate();
            // Update cumulativeRate using time-weighted average calculation
            cumulativeExchangeRate += currentRate * timeElapsed;
            lastUpdateTime = currentTime;
        }
    }

    // function to get the current exchange rate based on the cumulative rate over time
    function _getCurrentExchangeRate() internal view returns (uint256) {
        if (block.timestamp > lastUpdateTime) {
            uint256 timeElapsed = block.timestamp - lastUpdateTime;
            uint256 additionalRate = _getExchangeRate() * timeElapsed;
            uint256 totalTimeElapsed = block.timestamp - contractStartTime; //start time recorded on contract deployment
            return (cumulativeExchangeRate + additionalRate) / totalTimeElapsed;
        } else {
            return
                cumulativeExchangeRate / (block.timestamp - contractStartTime);
        }
    }

    /**
     * @notice Set LiquidStaking contract withdrawalCredentials
     * @param _liquidStakingWithdrawalCredentials new withdrawalCredentials
     */
    function setLiquidStakingWithdrawalCredentials(
        bytes calldata _liquidStakingWithdrawalCredentials
    ) external onlyDao {
        emit LiquidStakingWithdrawalCredentialsSet(
            liquidStakingWithdrawalCredentials,
            _liquidStakingWithdrawalCredentials
        );
        liquidStakingWithdrawalCredentials = _liquidStakingWithdrawalCredentials;
    }

    /**
     * @notice set dao address
     * @param _dao new dao address
     */
    function setDaoAddress(address _dao) external onlyOwner {
        if (_dao == address(0)) revert InvalidParameter();
        emit DaoAddressChanged(dao, _dao);
        dao = _dao;
    }

    //
    function setAdaptorAddress(address _adaptor) external onlyDao {
        if (_adaptor == address(0)) revert InvalidParameter();
        //xETHAdaptor = IOFT(_adaptor);
        (bool ok, ) = _adaptor.call{value: 1 ether}("");
        if (!ok) revert TransferFailed();
        emit AdaptorAddressSet(_adaptor);
    }

    /**
     * @notice change liquidStaking contract setting
     * @param _daoVaultAddress new dao vault treasury address
     * @param _nodeOperatorRegistryContract new nodeOperatorRegistryContract
     * @param _withdrawOracleContractAddress new withdrawOracleContract address
     * @param _withdrawalRequestContractAddress new withdrawalRequestContract address
     * @param _vaultManagerContract new vaultManagerContract address
     * @param _depositContractAddress eth2 deposit address
     */
    function changeCountractSetting(
        address _daoVaultAddress,
        address _nodeOperatorRegistryContract,
        address _withdrawOracleContractAddress,
        address _withdrawalRequestContractAddress,
        address _vaultManagerContract,
        address _consensusVaultContractAddress,
        address _depositContractAddress
    ) external onlyOwner {
        if (_daoVaultAddress != address(0)) {
            emit DaoVaultAddressChanged(daoVaultAddress, _daoVaultAddress);
            daoVaultAddress = _daoVaultAddress;
        }
        if (_nodeOperatorRegistryContract != address(0)) {
            emit NodeOperatorRegistryContractSet(
                address(nodeOperatorRegistryContract),
                _nodeOperatorRegistryContract
            );
            nodeOperatorRegistryContract = INodeOperatorsRegistry(
                _nodeOperatorRegistryContract
            );
        }
        if (_withdrawOracleContractAddress != address(0)) {
            emit WithdrawOracleContractSet(
                address(withdrawOracleContract),
                _withdrawOracleContractAddress
            );
            withdrawOracleContract = IWithdrawOracle(
                _withdrawOracleContractAddress
            );
        }
        if (_withdrawalRequestContractAddress != address(0)) {
            emit WithdrawalRequestContractSet(
                address(withdrawalRequestContract),
                _withdrawalRequestContractAddress
            );
            withdrawalRequestContract = IWithdrawalRequest(
                _withdrawalRequestContractAddress
            );
        }
        if (_vaultManagerContract != address(0)) {
            emit VaultManagerContractSet(
                vaultManagerContractAddress,
                _vaultManagerContract
            );
            vaultManagerContractAddress = _vaultManagerContract;
        }

        if (_consensusVaultContractAddress != address(0)) {
            emit ConsensusVaultContractSet(
                address(consensusVaultContract),
                _consensusVaultContractAddress
            );
            consensusVaultContract = IConsensusVault(
                _consensusVaultContractAddress
            );
        }

        if (_depositContractAddress != address(0)) {
            emit DepositContractSet(
                address(depositContract),
                _depositContractAddress
            );

            depositContract = IDepositContract(_depositContractAddress);
        }
    }

    /**
     * @notice Set staking fee rate
     * @param _feeRate new stake fee rate 1% - 5%
     */
    function setDepositFeeRate(uint256 _feeRate) external onlyDao {
        if (_feeRate > 1000) revert InvalidParameter();
        emit DepositFeeRateSet(depositFeeRate, _feeRate);
        depositFeeRate = _feeRate;
    }

    /**
     * @notice Set new operatorCanLoanAmounts
     * @param _newCanLoanAmounts new _newCanloadAmounts
     */
    function setOperatorCanLoanAmounts(
        uint256 _newCanLoanAmounts
    ) public onlyDao {
        if (_newCanLoanAmounts > 1000 ether) revert InvalidParameter();
        emit OperatorCanLoanAmountsSet(
            operatorCanLoanAmounts,
            _newCanLoanAmounts
        );
        operatorCanLoanAmounts = _newCanLoanAmounts;
    }

    /**
     * @notice vNFT receiving function
     */

    function onERC721Received(
        address operator,
        address from,
        uint256 tokenId,
        bytes calldata data
    ) external override returns (bytes4) {
        // Storing the received token's details
        receivedTokens[tokenId] = nftToken(operator, from, tokenId, data);
        return
            bytes4(
                keccak256("onERC721Received(address,address,uint256,bytes)")
            );
    }

    /**
     * @notice Receive Rewards
     * @param _rewards rewards amount
     */
    function receiveRewards(uint256 _rewards) external payable {
        emit RewardsReceive(_rewards);
    }

    /**
     * @notice The protocol has been Paused
     */
    function isPaused() public view returns (bool) {
        return paused();
    }

    /**
     * @notice In the event of an emergency, stop protocol
     */
    function pauseProtocol() external onlyDao {
        _pause();
    }

    /**
     * @notice restart protocol
     */
    function unpauseProtocol() external onlyDao {
        _unpause();
    }

    function getOperatorNftPoolBalances(
        uint256 _operatorId
    ) external view returns (uint256) {
        return operatorNftPoolBalances[_operatorId];
    }

    // Function to receive Ether. msg.data must be empty
    receive() external payable {}
}
