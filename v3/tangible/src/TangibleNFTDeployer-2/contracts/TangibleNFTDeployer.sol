// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.7;

import "./TangibleNFT.sol";
import "./interfaces/ITangibleNFTDeployer.sol";
import "./abstract/AdminAndTangibleAccess.sol";

contract TangibleNFTDeployer is ITangibleNFTDeployer, AdminAndTangibleAccess {
    address public factory;

    constructor() {
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    function setFactory(address _factory) external onlyAdmin {
        require(
            (_factory != address(0x0)) && (_factory != address(factory)),
            "Wrong factory"
        );

        _setupRole(FACTORY_ROLE, _factory);
        _revokeRole(FACTORY_ROLE, address(factory));
        emit SetFactoryDeployer(address(factory), _factory);
        factory = _factory;
    }

    function deployTnft(
        address admin,
        string calldata name,
        string calldata symbol,
        string calldata uri,
        bool isStoragePriceFixedAmount
    ) external override onlyFactory returns (ITangibleNFT) {
        TangibleNFT tangibleNFT = new TangibleNFT(
            msg.sender,
            name,
            symbol,
            uri,
            isStoragePriceFixedAmount
        );
        tangibleNFT.grantRole(DEFAULT_ADMIN_ROLE, admin);
        tangibleNFT.grantRole(FACTORY_ROLE, admin);
        tangibleNFT.revokeRole(DEFAULT_ADMIN_ROLE, address(this));
        // category[name] = tangibleNFT;
        // _tnfts.push(tangibleNFT);

        // //set the oracle
        // ITangiblePriceManager(priceManager).setOracleForCategory(tangibleNFT, IPriceOracle(priceOracle));

        // emit NewCategoryDeployed(address(tangibleNFT));

        return tangibleNFT;
    }
}
