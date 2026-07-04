// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "@openzeppelin/contracts/token/ERC20/ERC20Burnable.sol";

import "./owner/Operator.sol";

contract Grain is ERC20Burnable, Operator {
    uint256 public constant INITIAL_DISTRIBUTION = 100000 ether; // Genesis Pool

    /**
     * @notice Constructs the Gold Grain ERC-20 contract.
     */
    constructor() public ERC20("Gold Grain", "GRAIN") {
        _mint(msg.sender, INITIAL_DISTRIBUTION.add(10000 ether)); // 10k for setting up liquidity (GRAIN/WBNB, GRAIN/BGOLD)
    }

    /**
     * @notice Operator mints basis dollar to a recipient
     * @param recipient_ The address of recipient
     * @param amount_ The amount of basis dollar to mint to
     * @return whether the process has been done
     */
    function mint(address recipient_, uint256 amount_) public onlyOperator returns (bool) {
        uint256 balanceBefore = balanceOf(recipient_);
        _mint(recipient_, amount_);
        uint256 balanceAfter = balanceOf(recipient_);

        return balanceAfter > balanceBefore;
    }

    function burn(uint256 amount) public override {
        super.burn(amount);
    }

    function burnFrom(address account, uint256 amount) public override onlyOperator {
        super.burnFrom(account, amount);
    }

    function rescueStuckErc20(IERC20 _token) external onlyOperator {
        _token.transfer(operator(), _token.balanceOf(address(this)));
    }
}
