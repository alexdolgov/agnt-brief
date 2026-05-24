// SPDX-License-Identifier: MIT

pragma solidity 0.8.20;

import "lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import "lib/openzeppelin-contracts/contracts/access/extensions/AccessControlDefaultAdminRules.sol";

/**
 * @title ERC20BurnMint
 * @author Tensorplex Labs
 * @notice ERC20BurnMint is a generic ERC20 contract that is intended to represent a generic wrapped token.
 *         For our short-term scope we intend to use this contract as a wrapped Tao (exact name TBD), to bridge Tao from BitTensor to our new wrapped token on Ethereum.
 *         In the future, we hope to re-use this contract as a wrapped token for future partner blockchains.
 *        
 */
contract ERC20BurnMint is ERC20, AccessControlDefaultAdminRules {
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE"); // grants user token minting permission
    bytes32 public constant BURNER_ROLE = keccak256("BURNER_ROLE"); // grants user token burning permission.
    uint8 private immutable _decimals; // For BitTensor implementation we will use value of 9 to match with TAO.

    // @notice: initializes a ERC20BurnMint contract
    constructor(address initialOwner, string memory name, string memory symbol, uint8 decimals_)
    ERC20(name, symbol )
    AccessControlDefaultAdminRules(1 hours, initialOwner) {
        _decimals = decimals_;
    }

    /**
     * @notice mints this token to an input address. 
     * @param to is the Eth address that will recieve the minted tokens
     * @param amount is the amount of tokens to be minted
     */
    function mint(address to, uint256 amount) public onlyRole(MINTER_ROLE) {
        _mint(to, amount);
    }

    // @notice returns # of decimals for this token.
    // @dev Overrides ineherited decimals function to return a custom number of decimals
    function decimals() public view virtual override returns (uint8) {
        return _decimals;
    }

    /**
     * @notice burns amount from account
     * @param account is the address on ETH to burn from
     * @param amount is the amount of tokens to be burned
     */
    function burn(address account, uint256 amount) public onlyRole(BURNER_ROLE) {
        _burn(account, amount);
    }

}

