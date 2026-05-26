pragma solidity ^0.5.0;

import "ERC20Detailed.sol";
import "Context.sol";
import "ERC20.sol";

contract OSWAP is Context, ERC20, ERC20Detailed {
    
    constructor () public ERC20Detailed("Onto Swap", "OSWAP", 18) {
        _mint(0x2408c20608d819ebEE26653B272579dCb196C0e9, 10**26);
        _mint(0xCf4c701f361BC94421F7734723f8Cb08baE63783, 10**26);
        _mint(0xE101110384203a9aBb3d4A9BcFCF1Fecc2e1E411, 8*10**26);

    }
}