using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AspNetLearning.BLL.BusinessObjects
{
    public class ContestParticipantBO
    {
        public int? Score { get; set; }
        public int? Placement { get; set; }
        public UserBO User { get; set; }
        public ContestBO Contest { get; set; }

        public ContestParticipantBO() {}

        public ContestParticipantBO(int? score, int? placement, UserBO user, ContestBO contest)
        {
            this.Score = score;
            this.Placement = placement;
            this.User = user;
            this.Contest = contest;
        }
    }
}