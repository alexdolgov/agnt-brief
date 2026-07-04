// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

interface RootLike {
    function relyContract(address target, address user) external;
    function denyContract(address target, address user) external;
    function deny(address user) external;
}

interface IERC20Mintable {
    function mint(address to, uint256 value) external;
}

contract Spell {
    bool public done;
    string public constant description = "Chainbridge transfer recovery spell";

    address public constant LEGACY_CFG = 0xc221b7E65FfC80DE234bbB6667aBDd46593D34F0;
    RootLike public constant ROOT = RootLike(0x0C1fDfd6a1331a875EA013F3897fc8a76ada5DfC);

    function cast() public {
        require(!done, "spell-already-cast");
        done = true;
        execute();
    }

    function execute() internal {
        _mintWCFG();

        ROOT.deny(address(this));
    }

    function _mintWCFG() internal {
        ROOT.relyContract(LEGACY_CFG, address(this));
        IERC20Mintable(LEGACY_CFG).mint(0x8cC457f35a7fb0f4964e9d12D4ebac88C281Ac66, 100_000e18);
        ROOT.denyContract(LEGACY_CFG, address(this));
    }
}
