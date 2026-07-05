// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.19;

import {IERC20, SafeERC20} from "@openzeppelin/contracts@4.9.3/token/ERC20/utils/SafeERC20.sol";

contract SimpleTreasuryVault {
    using SafeERC20 for IERC20;

    /// @notice Use this to differentiate different treasury vaults.
    string public name;

    /// @notice Governance has all the power here.
    address public governance;

    /// @notice Governance transfer is a two-step process. Only the pendingGovernance address can accept new gov role.
    address public pendingGovernance;

    /// @notice Will only be true on the original deployed contract and not on clones; we dont want to clone a clone.
    bool public isOriginal = true;

    constructor(address _governance, string memory _name) {
        _initialize(_governance, _name);
    }

    /**
     * @notice Use this to clone an exact copy of this treasury contract.
     * @param _governance Gov/owner of the treasury contract.
     * @param _name What should we call this?
     */
    function cloneTreasuryVault(address _governance, string memory _name)
        external
        returns (address newTreasuryVault)
    {
        // dont clone a clone
        if (!isOriginal) {
            revert("Cant clone a clone");
        }

        // Copied from https://github.com/optionality/clone-factory/blob/master/contracts/CloneFactory.sol
        bytes20 addressBytes = bytes20(address(this));
        assembly {
            // EIP-1167 bytecode
            let clone_code := mload(0x40)
            mstore(
                clone_code,
                0x3d602d80600a3d3981f3363d3d373d3d3d363d73000000000000000000000000
            )
            mstore(add(clone_code, 0x14), addressBytes)
            mstore(
                add(clone_code, 0x28),
                0x5af43d82803e903d91602b57fd5bf30000000000000000000000000000000000
            )
            newTreasuryVault := create(0, clone_code, 0x37)
        }

        SimpleTreasuryVault(newTreasuryVault).initialize(_governance, _name);
    }

    /**
     * @notice Initialize the contract.
     * @dev This should only be called by the clone function above.
     * @param _governance Gov/owner of the treasury contract.
     * @param _name What should we call this?
     */
    function initialize(address _governance, string memory _name) public {
        _initialize(_governance, _name);
    }

    // this is called by our original contract, as well as any clones via the above function
    function _initialize(address _governance, string memory _name) internal {
        // make sure that we havent initialized this before
        if (governance != address(0)) {
            revert("Already initialized");
        }

        governance = _governance;
        name = _name;
    }

    /**
     *  @notice Set our governance address. Step 1 of 2.
     *  @dev May only be called by current governance role.
     *  @param _governance Address of new governance.
     */
    function setGovernance(address _governance) external {
        require(msg.sender == governance, "!authorized");
        pendingGovernance = _governance;
    }

    /**
     *  @notice Accept governance role from new governance address. Step 2 of 2.
     *  @dev May only be called by current pendingGovernance role.
     */
    function acceptGovernance() external {
        address _pendingGovernance = pendingGovernance;
        require(msg.sender == _pendingGovernance, "!authorized");
        governance = _pendingGovernance;
        pendingGovernance = address(0);
    }

    /**
     *  @notice Retrieve some funds from this treasury vault.
     *  @dev May only be called by current governance role.
     *  @param _token Address of token to transfer.
     *  @param _amount Amount of token to transfer.
     */
    function sendAmountToGovernance(address _token, uint256 _amount) external {
        require(msg.sender == governance, "!authorized");
        IERC20(_token).safeTransfer(governance, _amount);
    }
}
