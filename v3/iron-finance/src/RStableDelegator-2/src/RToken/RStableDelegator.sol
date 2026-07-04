pragma solidity ^0.5.16;
import "./RErc20Delegator.sol";

contract RStableDelegator is RErc20Delegator {
    constructor(
        address underlying_,
        IronControllerInterface ironController_,
        InterestRateModel interestRateModel_,
        uint256 initialExchangeRateMantissa_,
        string memory name_,
        string memory symbol_,
        uint8 decimals_,
        address payable admin_,
        address implementation_,
        bytes memory becomeImplementationData
    )
        public
        RErc20Delegator(
            underlying_,
            ironController_,
            interestRateModel_,
            initialExchangeRateMantissa_,
            name_,
            symbol_,
            decimals_,
            admin_,
            implementation_,
            becomeImplementationData
        )
    {}

    function _setMaxTotalSupply(uint256 maxSupply) external {
        delegateToImplementation(abi.encodeWithSignature("_setMaxTotalSupply(uint256)", maxSupply));
    }
}
