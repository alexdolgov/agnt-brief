// SPDX-License-Identifier: BUSL-1.1
pragma solidity >=0.8.0;

import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";


import "../interfaces/IHyperFactory.sol";
import "./HyperToken.sol";

contract HyperFactory is IHyperFactory {
    IAddressesProvider public immutable ADDRESS_PROVIDER;
    address private _hyperVault;

    constructor(IAddressesProvider addressProvider, address hyperVault) {
        ADDRESS_PROVIDER = addressProvider;
        _hyperVault = hyperVault;
    }

    function createHyperToken(
        address asset
    ) external override returns (address) {
        require(msg.sender == _hyperVault, "onlyHyperVault");
        string memory name = string(
            abi.encodePacked(
                "h",
                IERC20Metadata(asset).name()
            )
        );
        string memory symbol = string(
            abi.encodePacked(
                "h",
                IERC20Metadata(asset).symbol()
            )
        );

        HyperToken hyperToken = new HyperToken(
            ADDRESS_PROVIDER,
            asset,
            msg.sender,
            name,
            symbol
        );
        return address(hyperToken);
    }
}
