using System;
using System.Collections.Generic;

namespace PoCRD.Client
{
    public class ParameterList
    {
        private IDictionary<String, String> parameters;

        public ParameterList()
        {
            parameters = new Dictionary<String, String>();
        }

        public ParameterList(int initialCapacity)
        {
            parameters = new Dictionary<String, String>(initialCapacity);
        }

        public void Put(String name, String value)
        {
            if (name == null || name.Length == 0 || value == null)
            {
                return;
            }
            parameters[name] = value;
        }

        public String Get(String key)
        {
            return parameters[key];
        }

        public ICollection<String> GetKeys()
		{
			return parameters.Keys;
		}

		public bool ContainsKey(String key)
        {
            return parameters.ContainsKey(key);
        }

        public int Size()
        {
            return parameters.Count;
        }
    }
}