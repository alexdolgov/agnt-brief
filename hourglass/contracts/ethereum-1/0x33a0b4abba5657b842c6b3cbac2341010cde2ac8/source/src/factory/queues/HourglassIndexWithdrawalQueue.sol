// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import "@openzeppelin-contracts-upgradeable/contracts/token/ERC1155/ERC1155Upgradeable.sol";
import "../../utils/TwoStepOwnable.sol";

/// @title ERC1155 Representation of Hourglass Index Withdrawals

contract HourglassIndexWithdrawalQueue is ERC1155Upgradeable, TwoStepOwnable {
    // address of the Hourglass Index contract
    address internal _minter;

    /// @notice Token ID to Queue Tranche
    mapping(uint256 => uint256) internal _tokenTranche;
    /// @notice Tracks the total amount of a token id that has been requested/minted
    mapping(uint256 => uint256) private _totalSupplyCreated;
    /// @notice Tracks the total amount of a token id that has been redeemed/burned
    mapping(uint256 => uint256) private _totalAmountBurned;

    string public name;

    modifier onlyMinter() {
        if (msg.sender != _minter) {
            revert UnauthorizedAddress();
        }
        _;
    }

    /// @dev disable initializers on implementation contract
    constructor() {
        _disableInitializers();
    }

    ////////// ADMIN /////////

    /// @notice Initialize the contract with the minter (Hourglass Index) & owner addresses
    /// @param __owner The address of the Upgrader
    function initialize(string memory _name, address __owner) public initializer {
        __ERC1155_init("");
        _setInitialOwner(__owner);
        name = _name;
    }

    /// @notice Set the minter address
    /// @param minterAddress The address of the minter (Hourglass Index)
    /// @dev Called by the factory at deployment
    function setDeployment(address minterAddress) external {
        if (_minter != address(0)) revert MinterAlreadySet();
        _minter = minterAddress;
    }

    /// @notice Callable by the owner to set the URI of the token if that ends up being desired
    /// @param newUri The new URI to set
    function setUri(string memory newUri) external onlyOwner {
        _setURI(newUri);
    }

    ////////// MINTING & BURNING //////////

    /// @notice Called by the Hourglass Index contract to mint a new withdrawal queue position
    /// @param account The address to mint the position to
    /// @param amount The amount to mint
    /// @param queueTranche The tranche of the queue to mint to
    /// @param positionId The position ID to mint
    function mintQueuePosition(address account, uint256 amount, uint256 queueTranche, uint256 positionId)
        external
        onlyMinter
    {
        _tokenTranche[positionId] = queueTranche;
        _mint(account, positionId, amount, "");
    }

    /// @notice Called by the Hourglass Index contract to burn a withdrawal queue position when user redeems it
    /// @param account The address to burn the position from
    /// @param amount The amount to burn
    /// @param positionId The token ID to burn
    function burnQueuePosition(address account, uint256 amount, uint256 positionId) external onlyMinter {
        _burn(account, positionId, amount);
    }

    /// @notice Called by the Hourglass Index contract to burn a batch of withdrawal queue positions when user redeems them
    /// @param account The address to burn the positions from
    /// @param ids The token IDs to burn
    /// @param amounts The amounts to burn
    function burnBatchQueuePositions(address account, uint256[] memory ids, uint256[] memory amounts)
        external
        onlyMinter
    {
        _burnBatch(account, ids, amounts);
    }

    /**
     * @dev See {ERC1155-_beforeTokenTransfer}.
     * @notice This does additional logic taken from ERC1155Supply to track the total supply of
     *    individual token ids.
     * @notice The change from that case is that _totalSupplyCreated is not decreased, instead, _totalAmountBurned is increased.
     */
    function _beforeTokenTransfer(
        address operator,
        address from,
        address to,
        uint256[] memory ids,
        uint256[] memory amounts,
        bytes memory data
    ) internal override {
        super._beforeTokenTransfer(operator, from, to, ids, amounts, data);

        if (from == address(0)) {
            for (uint256 i; i < ids.length;) {
                _totalSupplyCreated[ids[i]] += amounts[i];

                unchecked {
                    ++i;
                }
            }
        }

        // if burning tokens, check that amount being burned + amount already burned is less than total amount minted
        if (to == address(0)) {
            uint256 length = ids.length;
            for (uint256 i; i < length;) {
                // token id
                uint256 id = ids[i];
                // amount to burn
                uint256 amount = amounts[i];
                // total minted amount for this token id
                uint256 supply = _totalSupplyCreated[id];
                // total supply burned for this token id
                uint256 burned = _totalAmountBurned[id];
                // minted - burned should be less than amount
                if ((supply - burned) < amount) {
                    revert BurnAmountExceedsSupply();
                }
                // increase the total amount burned by `amount` - cannot overflow due to above check
                unchecked {
                    _totalAmountBurned[id] = burned + amount;
                    ++i;
                }
            }
        }
    }

    ////////// GETTERS //////////

    function tokenTranche(uint256 id) external view returns (uint256 queueTranche) {
        queueTranche = _tokenTranche[id];
    }

    /// @notice Get a user's balances of a given array of token IDs and the tranches they are in
    /// @param ids The token IDs to check the balances of
    /// @return amountBurned The amount burned so far for each token ID
    /// @return queueTranches The tranches of the queue the token IDs are in
    function tranchesAndAmounts(uint256[] calldata ids) external view returns (uint256[] memory, uint256[] memory) {
        uint256 numberOfPositions = ids.length;
        uint256[] memory _burned = new uint256[](numberOfPositions);
        uint256[] memory _queueTranches = new uint256[](numberOfPositions);
        for (uint256 i; i < numberOfPositions;) {
            _queueTranches[i] = _tokenTranche[ids[i]];
            _burned[i] = _totalAmountBurned[ids[i]];

            unchecked {
                ++i;
            }
        }
        return (_queueTranches, _burned);
    }

    /// @notice Get a user's balances of a given array of token IDs
    /// @param account The address to check the balances of
    /// @param ids The token IDs to check the balances of
    /// @return balances The balances of the token IDs
    function balancesOf(address account, uint256[] calldata ids) external view returns (uint256[] memory) {
        uint256 numberOfPositions = ids.length;
        uint256[] memory _userBalances = new uint256[](numberOfPositions);
        for (uint256 i; i < numberOfPositions;) {
            _userBalances[i] = balanceOf(account, ids[i]);

            unchecked {
                ++i;
            }
        }
        return _userBalances;
    }

    /// @notice Getter for the address of the minter/Hourglass Index
    /// @return The address of the minter/Hourglass Index
    function minter() external view returns (address) {
        return _minter;
    }

    function totalSupplyCreated(uint256 id) public view returns (uint256) {
        return _totalSupplyCreated[id];
    }

    function totalAmountBurned(uint256 id) public view returns (uint256) {
        return _totalAmountBurned[id];
    }

    function supplys(uint256 id) public view returns (uint256, uint256) {
        return (_totalSupplyCreated[id], _totalAmountBurned[id]);
    }

    function exists(uint256 id) public view returns (bool) {
        return (_totalSupplyCreated[id] - _totalAmountBurned[id]) > 0;
    }

    /// @notice Returns the current total supply of a given token ID
    /// @param id The token ID to check the total supply of
    /// @return The total supply of the token ID currently in existence
    function totalSupply(uint256 id) public view returns (uint256) {
        return _totalSupplyCreated[id] - _totalAmountBurned[id];
    }

    ////////// ERRORS //////////

    error UnauthorizedAddress();
    error BurnAmountExceedsSupply();
    error MinterAlreadySet();
}
