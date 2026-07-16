// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable2Step.sol";
import {IERC165, IERC7802} from "./interfaces/IERC7802.sol";

/**
 * @title Token
 * @notice An ERC20 token with blacklist control and crosschain bridging features.
 */
contract Token is ERC20, Ownable2Step , IERC7802 {
    /**
     * @notice An error thrown when the caller is not authorized to perform an action.
     */
    error Unauthorized();

    /**
     * @notice Emitted when a user's blacklist status changes.
     * @param user The user's address.
     * @param value True if blacklisted, false otherwise.
     */
    event BlacklistUpdated(address indexed user, bool value);

    /**
     * @notice Address of the SuperchainTokenBridge predeploy.
     */
    address internal constant SUPERCHAIN_TOKEN_BRIDGE = 0x4200000000000000000000000000000000000028;

    /**
     * @notice Tracks blacklisted addresses.
     */
    mapping(address => bool) private _blacklist;

    /**
     * @notice Creates a new ERC20 token.
     * @param name The name of the token.
     * @param symbol The symbol of the token.
     * @param initialSupply Initial token supply minted to the deployer.
     */
    constructor(
        string memory name,
        string memory symbol,
        uint256 initialSupply
    ) ERC20(name, symbol) Ownable(msg.sender) {
        _mint(msg.sender, initialSupply);
    }

    /**
     * @notice Returns the number of decimals used by the token (18).
     */
    function decimals() public pure override returns (uint8) {
        return 18;
    }

    /**
     * @notice Updates the blacklist status for a user.
     * @param user The user's address.
     * @param value True to blacklist the user, false to remove them from blacklist.
     */
    function blacklistUpdate(address user, bool value) external virtual onlyOwner {
        _blacklist[user] = value;
        emit BlacklistUpdated(user, value);
    }

    /**
     * @notice Checks if a user is blacklisted.
     * @param user The user's address.
     * @return True if blacklisted, false otherwise.
     */
    function isBlackListed(address user) public view returns (bool) {
        return _blacklist[user];
    }
    /**
     * @dev Overriding `_update` to insert custom logic for all transfers,
     *      including minting (from == address(0)) and burning (to == address(0)).
     */
    function _update(address from, address to, uint256 amount)
        internal
        virtual
        override
    {
        require(!isBlackListed(to) && !isBlackListed(from), "Token transfer refused. Receiver is on blacklist");
        super._update(from, to, amount);
    }

    /**
     * @notice Mints tokens on behalf of the SuperchainTokenBridge.
     * @param _to The address receiving the minted tokens.
     * @param _amount The amount of tokens to mint.
     */
    function crosschainMint(address _to, uint256 _amount) external {
        if (msg.sender != SUPERCHAIN_TOKEN_BRIDGE) revert Unauthorized();
        _mint(_to, _amount);
        emit CrosschainMint(_to, _amount, msg.sender);
    }

    /**
     * @notice Burns tokens on behalf of the SuperchainTokenBridge.
     * @param _from The address from which tokens are burned.
     * @param _amount The amount of tokens to burn.
     */
    function crosschainBurn(address _from, uint256 _amount) external {
        if (msg.sender != SUPERCHAIN_TOKEN_BRIDGE) revert Unauthorized();
        _burn(_from, _amount);
        emit CrosschainBurn(_from, _amount, msg.sender);
    }

    /**
     * @notice Checks if this contract supports a given interface.
     * @param _interfaceId The interface ID to check.
     * @return True if the interface is supported.
     */
    function supportsInterface(bytes4 _interfaceId) external view virtual returns (bool) {
        return
            _interfaceId == type(IERC7802).interfaceId ||
            _interfaceId == type(IERC20).interfaceId ||
            _interfaceId == type(IERC165).interfaceId;
    }
}
