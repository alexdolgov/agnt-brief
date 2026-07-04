//SPDX-License-Identifier: UNLICENSED

pragma solidity >0.8.0 <0.9.0;

import "../../libs/utils/LUtil.sol";
import "../../interfaces/IGame.sol";
import "../../libs/referral/LReferral.sol";
import "../../utils/structs/EnumerableSetUpgradeable.sol";

library LPlatform {
    bytes32 public constant ownerRole =
        0x02016836a56b71f0d02689e69e326f4f4c1b9057164ef592671cf0d37c8040c0;
    bytes32 public constant adminRole =
        0xf23ec0bb4210edd5cba85afd05127efcd2fc6a781bfed49188da1081670b22d8;

    using EnumerableSetUpgradeable for EnumerableSetUpgradeable.AddressSet;

    function isGamesClosed(EnumerableSetUpgradeable.AddressSet storage games)
        public
        view
        returns (bool isClosed)
    {
        isClosed = true;

        for (uint256 index = 0; index < games.length(); index++) {
            IGame game = IGame(games.at(index));
            if (game.getStatus() != LUtil.GameStatus.CLOSED) {
                isClosed = false;
                break;
            }
        }
    }

    function isRoundExist(
        EnumerableSetUpgradeable.AddressSet storage games,
        address roundAddress
    )
        public
        view
        returns (
            bool isRoundExist_,
            uint256 roundIndex,
            address gameAddress
        )
    {
        require(roundAddress != address(0), "LPLATFORM: round address is zero");
        for (uint256 index = 0; index < games.length(); index++) {
            IGame game = IGame(games.at(index));
            (isRoundExist_, roundIndex) = game.isRoundExist(roundAddress);

            if (isRoundExist_) {
                gameAddress = games.at(index);
                break;
            }
        }
    }
}
