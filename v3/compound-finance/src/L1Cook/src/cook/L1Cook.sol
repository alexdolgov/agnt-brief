// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {ERC20Upgradeable} from "openzeppelin-upgradeable/token/ERC20/ERC20Upgradeable.sol";

import {IStatusRead} from "./IMessagingStatus.sol";

contract L1Cook is ERC20Upgradeable {
    // errors
    error Paused();
    error UnexpectedInitializeParams();

    // messaging status setup
    address public status;

    struct Init {
        address admin;
        address status;
        string name;
        string symbol;
        uint256 maxSupply;
    }

    // @dev _token is the proxy address of L1cmETH
    constructor() {
        _disableInitializers();
    }

    /**
     * @dev Initializes the OFT with the provided name, symbol, and delegate.
     * @dev The delegate typically should be set as the admin of the contract.
     * @dev Ownable is not initialized here on purpose. It should be initialized in the child contract to
     * accommodate the different version of Ownable.
     */
    function initialize(Init memory init) external initializer {
        if (
            init.admin == address(0) ||
            init.status == address(0)
        ) {
            revert UnexpectedInitializeParams();
        }
        __Context_init();
        __ERC20_init(init.name, init.symbol);

        // mint initial tokens
        _mint(init.admin, init.maxSupply);

        // assign status contract
        status = init.status;
    }

    function _update(address from, address to, uint256 value) internal override {
        // check pause status
        if (status.code.length != 0 && IStatusRead(status).isTransferPaused()) {
            revert Paused();
        }
        super._update(from, to, value);
    }
}
